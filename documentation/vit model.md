# ViT Model



## Residual Skip Connection 
Because the residual skip connection in Vision Transformers (ViT) occurs after the MLP (which essentially consists of a dense or fully-connected layer) in the transformer encoder design, I decided to override the MLP function to integrate this crucial aspect effectively. By adding the skip connection right after the dense layer, I ensure that the input features are combined with the output of the MLP, allowing for a more seamless flow of information. This approach helps mitigate issues related to vanishing gradients and enhances the model's ability to learn complex representations. Incorporating the skip connection in this manner not only improves training stability but also contributes to better performance by facilitating the learning of residual mappings, which can be particularly beneficial in deep networks.


<div align="center">
    <img src="https://github.com/user-attachments/assets/1503b8f4-d621-4e55-9d5e-b5bdf08abcb6" width="400" >
</div>

## Patches Generation 

Patches are crucial for tokenizing images in image classification, and they play a significant role in the Vision Transformer architecture. By breaking down images into smaller, manageable segments, the model can better understand and process the visual information. Keras simplifies this seemingly complex task with its `tf.image.extract_patches()` method, which elegantly handles the intricacies of patch extraction. This method takes essential arguments, such as patch size, stride, padding, and others, allowing for customizable control over how the image is divided. With just a few parameters, it efficiently transforms our images into patches of a defined size, enabling the Vision Transformer to effectively learn from the localized features within each segment. This streamlined approach not only enhances the model's performance but also makes it easier for developers to implement image tokenization in their workflows.


<div align="center">
  <img src="https://github.com/user-attachments/assets/600fc0c8-1cb9-4534-9c55-e61485d91851" width="300" >
  <img src="https://github.com/user-attachments/assets/bb4fe82e-b0ee-4c58-9dc4-f8c98906a7b9" width="300" >
</div>

## Image vectorization & positional embedding
The PatchEncoder layer plays a vital role in transforming image patches. It linearly converts each patch by projecting it into a vector of size `Projection_dim` , effectively allowing the model to work with fixed-length representations. Additionally, the PatchEncoder incorporates a trainable position embedding, which is added to the projected vector. This position embedding provides crucial spatial information, enabling the model to retain the context of where each patch originated within the original image. By combining both the linear projection and position embedding, the PatchEncoder enhances the model’s ability to understand the relationships between different patches, ultimately improving its performance in image classification tasks. This approach not only facilitates the processing of visual data but also enriches the feature representation learned by the Vision Transformer.

