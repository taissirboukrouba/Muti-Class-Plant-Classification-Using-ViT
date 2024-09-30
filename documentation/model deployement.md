# Model Deployement 

## Converting the model 
To upload the model to the Flutter app, it is essential to convert it into a format that is compatible with Flutter, specifically the TensorFlow Lite (TFLite) format. This conversion is crucial because TFLite is optimized for mobile and embedded devices, enabling efficient model inference with reduced latency and lower memory consumption.

To achieve this transformation, we utilize the following code, which facilitates the conversion process by taking the original model and applying the necessary transformations to produce a TFLite model. This includes loading the trained Keras model while accounting for any custom components used during its creation. The code also incorporates optimizations for size, ensuring that the model remains lightweight for mobile deployment. Additionally, it specifies the supported operations to ensure compatibility with TensorFlow Lite. This allows the Flutter application to efficiently utilize the trained model for real-time predictions while ensuring optimal performance on various devices. Here's how this process is implemented in code:

```python
# Loading the model
My_TFlite_Model = tf.keras.models.load_model('model.h5', custom_objects={"Patches": Patches, "PatchEncoder": PatchEncoder})

# Initialising the TFLite converter
converter = tf.lite.TFLiteConverter.from_keras_model(My_TFlite_Model)

# Size optimization
converter.optimizations = [tf.lite.Optimize.OPTIMIZE_FOR_SIZE]

# Making it OPS supported
converter.target_spec.supported_ops = [
    tf.lite.OpsSet.TFLITE_BUILTINS,  # Enable TensorFlow Lite ops.
    tf.lite.OpsSet.SELECT_TF_OPS      # Enable TensorFlow ops.
]

# Converting to TFLite format
tflite_model = converter.convert()

# Saving the model
open("MyModelo.tflite", "wb").write(tflite_model)
```

## Getting Image Inputs 

Since this is an image classification application, my inputs will consist of images sourced from two main channels: the device's camera and the image gallery. To facilitate this process, i used the `image_picker` Flutter plugin, which provides a seamless way to select images from the device's image library or capture new images using the camera.

When a user selects an image, the relevant widgets in the app will be notified, ensuring a responsive user experience. Importantly, the program continues to run smoothly in the background without blocking any threads, thanks to the implementation of the async/await keywords. This allows the application to handle image selection efficiently without causing any lag.

```dart
Future pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
}
```
I applied the same logic for capturing images from the camera, with the only modification being the source specification. Once an image is obtained, it is then passed to the classification function for further processing. This approach streamlines the workflow and ensures that users can easily engage with the app's image classification capabilities.



## Feeding the model 

Loading the model has never been easier, thanks to **TFLite**, a Flutter plugin that supports the TensorFlow Lite API. As a result, when the application is launched, this function is invoked to load the model. The use of `await` and `async` keywords indicates that the method’s return type is a Future, meaning the object will not be delivered immediately and may take an undetermined amount of time to load. Essentially, this function accepts the model and labels as inputs, facilitating a smooth integration of the machine learning model within the Flutter application.

```dart
void initState() {
    super.initState();
    loadModel();
}

Future loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/MyModel.tflite", labels: "assets/MyLabels.txt"))!;
    print("Models loading status: $res");
}
```

## Getting the predictions 
This function, imageClassification, takes a File object representing the image as its input.

Here’s how the process works:

- The function calls Tflite.runModelOnImage, providing the image path along with parameters such as the number of results to return, a threshold for confidence, and normalization values for mean and standard deviation.
- The model processes the image and generates a list of recognitions based on the predictions.
- After receiving the results, the setState method is invoked to update the UI with the predictions and the current image.



```dart
Future imageClassification(File image) async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 1,
      threshold: 0.05,
      imageMean: 0.0,
      imageStd: 255.0,
    );
    setState(() {
      _results = recognitions!;
      _image = image;
    });
}
```

  
This streamlined approach enables efficient image classification within the application, enhancing the user experience. To access the prediction and confidence to display them, you merely need to add the following :

```dart
label = predictions[0][‘label’];
confidence = predictions[0][‘confidence’];
```


