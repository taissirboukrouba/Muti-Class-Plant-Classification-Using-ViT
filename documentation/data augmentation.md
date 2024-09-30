# Data Augmentation 

I conducted data augmentation to enhance the dataset by randomly applying various modifications to the images. This technique is essential for improving the dataset's size and diversity, which is particularly important given that the Vision Transformer (ViT) architecture performs optimally with large datasets, ideally starting from a minimum of 1 million data points. By implementing data augmentation, I can simulate a larger dataset without the need for additional image collection, which can be time-consuming and resource-intensive.

The types of modifications applied during data augmentation include rotations, shifts, flips, scaling, and color adjustments, among others. Each of these transformations helps create different variations of the original images, enabling the model to learn from a more extensive range of scenarios and reducing the risk of overfitting. This process not only increases the quantity of training data but also enhances the model's ability to generalize better to new, unseen images. Ultimately, data augmentation plays a vital role in preparing the dataset for training a robust and accurate ViT model for plant classification.

```python
data_augmentation = keras.Sequential(
    [
        layers.Normalization(),
        layers.Resizing(image_size, image_size),
        layers.RandomFlip("horizontal"),
        layers.RandomRotation(factor=0.02),
        layers.RandomZoom(
            height_factor=0.2, width_factor=0.2
        ),
    ],
    name="data_augmentation",
)
data_augmentation.layers[0].adapt(X_train)
```

This means instead of providing the model with the same pictures every time, I use this code to implement subtle random adjustments, such as slight rotations, zooming, translations, and more. These modifications are designed to be modest enough that they do not significantly alter the content of the images as perceived by the human eye. However, these transformations effectively change the pixel values, introducing variability that helps the model learn more robust features. By augmenting the data in this way, I can enhance the model's ability to generalize, making it less likely to overfit to specific examples in the training dataset. This approach ensures that the model is exposed to a broader range of visual scenarios, ultimately improving its performance on unseen data.

<div align="center">
    <p><em>Image Example Before Data Augmentation</em></p>
    <img src="https://github.com/user-attachments/assets/7eb02b0a-203a-49e6-90e4-c0df11c6d5d2" width="200" alt="loss">
</div>

<br> 

<div align="center"> 
    <p><em>Image Example After Data Augmentation</em></p>
    <img src="https://github.com/user-attachments/assets/33fcdf16-671a-41c2-ba02-d5b2849c3e19" width="150" alt="loss">
    <img src="https://github.com/user-attachments/assets/183413bd-d897-458a-8997-4077f529e4d0" width="150" alt="loss">
    <img src="https://github.com/user-attachments/assets/292f8f25-db86-411f-8150-29d0802f3cf5" width="150" alt="loss">
    <img src="https://github.com/user-attachments/assets/b9c3d853-fcab-4cc4-b536-b9fb9a39d59e" width="150" alt="loss">
     

</div>






