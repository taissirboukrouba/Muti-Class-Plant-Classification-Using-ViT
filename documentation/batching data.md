# Batching Data 

## Importing the dataset 

To save time, i didn't implement the dataset the traditional way (by importing classes one by one), which would be memory intensive. Instead, i used a trick called **data generators**!  

Keras provides these data generators as an API to assist in loading portions of data rather than the entire dataset into memory. As a result, I'll split the data into batches and load each batch into RAM as needed. This approach allows me to save a significant amount of memory, freeing up remaining RAM for training the model. 

In my case, i have built a train generator that will later be split into training and testing sets, as well as a validation generator for the validation set. I can use the image generator from the **ImageDataGenerator** import from the Keras preprocessing module, where i initialize the image generator, specify the dataset path along with the validation split ratio and other hyperparameters, and then let it do its magic! This will end with 4097 images for the training dataset and 1006 for the validation (testing) set. 


```python
train_datagen = ImageDataGenerator(rescale=1./255, validation_split=0.2)
image_size = (150, 150)
batch_size = 33

train_generator = train_datagen.flow_from_directory(
        dataset_path,
        target_size=image_size,
        batch_size=batch_size,
        class_mode='sparse',
        subset='training')

validation_generator = train_datagen.flow_from_directory(
        dataset_path,
        target_size=image_size,
        batch_size=batch_size,
        class_mode='sparse', 
        shuffle=True,
        subset='validation')
```

## Obtaining the batches 

To read data in batches using data generators, it is essential to use the `next()` function, which allows us to access one batch at a time from the generator. This method is efficient because it prevents the entire dataset from being loaded into memory at once, thereby conserving valuable system resources. By cycling through all the classes instead of focusing on just a single class, we ensure that we retrieve a complete set of batches representative of the entire dataset. This approach helps maintain the diversity of the data we feed into the model and enhances its ability to learn from various examples. While the following code is only for the training set , the testing set goes through the same process so i don't have to go through it again here. 

```python
train_generator.reset()
X_train, y_train = next(train_generator)
for i in tqdm(range(int(len(train_generator) - 1))):  # 1st batch is already fetched before the for loop.
    img, label = next(train_generator)
    X_train = np.append(X_train, img, axis=0)
    y_train = np.append(y_train, label, axis=0)

print(X_train.shape, y_train.shape)
```
