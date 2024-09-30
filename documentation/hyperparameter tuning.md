# Hyperparameter Tuning 

To achieve optimal performance and high accuracy scores with our model, it is essential to engage in hyperparameter tuning. This process involves systematically altering and fine-tuning key hyperparameters such as the learning rate, batch size, number of layers, number of units within each layer, and other critical settings. Each of these hyperparameters plays a significant role in determining how well the model learns from the data and generalizes to unseen examples. Therefore, selecting appropriate hyperparameters is not just important; it is a critical step in the modeling process that can greatly influence the outcome.

Prior to using these hyperparameters within the model's architecture, we defined and documented them clearly. This ensures that all of them are properly declared and integrated, to have a more organized and coherent model structure. 

```python
learning_rate = 0.001
input_shape = (150, 150, 3)
weight_decay = 0.0001  # Used by our optimizer (Adam)
batch_size = batch_size
num_epochs = 85
num_classes = len(train_generator.class_indices)
image_size = 72  
patch_size = 6  
num_patches = (image_size // patch_size) ** 2
projection_dim = 64
num_heads = 4
transformer_units = [
    projection_dim * 2,
    projection_dim,
]  
transformer_layers = 8
mlp_head_units = [2048, 1024] 
```
