# Multi-Class Plant Classification Using ViT 
![project cover](https://github.com/taissirboukrouba/Plant-Classification-Using-Vision-Transformers/assets/89689459/dd62e9bd-b0e4-4abb-ba60-87e925074623)


- **Author(s):** Taissir Boukrouba
- **Affiliation:** University of UHBC   
- **Date:** 07/2022
- **Last Updated** : 09/2024

---

## Table of Contents
- [Project Overview](#project-overview)
- [Importance](#importance)
- [Document Control](#document-control)
- [Installation](#installation)
- [VIT Model Implementation](#vit-model-implementation)
    - [Computational Environment](#computational-environment)
    - [Methodology](#methodology)
        - [I - Data Collection](#i---data-collection)
        - [II - Data Perparation](#ii---data-preparation)
        - [III - Data Preprocessing](#iii---data-preprocessing)
        - [IV - Modelling](#iv---modelling)
    - [Results](#results)
- [Flutter App Implementation](#flutter-app-implementation)
  - [Figma App Design](#figma-app-design)
  - [Heuristics](#heuristics)
  - [Model Deployement](#model-deployement)
- [Project Limitations](#project-limitations)


---

## Project Overview
This project focuses on the creation and testing of a personalized dataset consisting of 41 Algerian plant species. The primary goal is to apply state-of-the-art Vision Transformers (ViT), inspired by the Natural Language Processing (NLP) Transformer architecture, to achieve accurate multi-class image classification of these plants. Unlike traditional convolutional neural networks (CNNs), which rely on localized feature extraction, Vision Transformers offer a more global perspective, potentially enhancing classification accuracy in complex, multi-class datasets. By leveraging VITs and their self-attention mechanisms, this project seeks to explore the model’s ability to handle visual data, particularly in the context of distinguishing between multiple plant species.The trained model was integrated into a Flutter mobile application under the name of **"NEBTA"** , designed in Figma, to provide an easy-to-use interface for plant identification. This app uses the phone's camera, enabling real-time application of the Vision Transformer model to classify plant species directly from live images. 


## Importance

The multi-class classification of Algerian plants using Vision Transformers offers diverse practical applications. In agriculture, it can assist with an automated identification of crop species (crop monitoring) and can help in predicting crop yields by analyzing the health and growth stages of different plant species (Yield Prediction). For environmental management, it supports tracking changes in plant populations providing insights into ecosystem dynamics (biodiversity conservation) , and controlling invasive species. It also plays a role in pharmaceutical research by aiding in medicinal plant identification and quality control. Beyond this, the model can be applied in forestry management, smart farming, and accurate plant data supports informed decision-making in land use planning (GIS mapping), conservation zoning, and habitat restoration projects , promoting sustainable practice. Finally, the dataset and classification model serve as valuable resources for academic research in botany, ecology, and related fields.






## Document Control

## Installation

To save time executing the project, it is highly advisable to have access to good CPU and GPU resources. Using a computer equipped with high-performance GPUs, or opting for platforms like Colab Pro with premium GPU options such as NVIDIA A100, L4, or T4, can significantly speed up training and inference times. These powerful computing resources are essential for efficiently handling the different techniques and complex computations required by Vision Transformers, ensuring faster and more accurate results

```bash
# clonning repository
git clone https://github.com/taissirboukrouba/Muti-Class-Plant-Classification-Using-ViT.git
# changing to the project's directory 
cd Muti-Class-Plant-Classification-Using-ViT
# installing the required libraries
pip install -r requirements.txt
```

# VIT Model Implementation
## Methodology 
> [!IMPORTANT]  
> For a more in-depth documentation , please refer to the following [directory](documentation/)


### I - Data Collection 
The dataset utilized in this approach was gathered through a collaborative effort involving my colleagues and experts from the National Plant Protection Institute, Labiod Medjadja, located in Chlef, Algeria. This collaboration was crucial in ensuring the dataset’s quality and diversity, as it leveraged the expertise of seasoned professionals in the field of plant science. The collection process spanned several months and involved field visits to various locations, including the institute's experimental fields and surrounding farms, to document and capture images of native Algerian plant species.

<br>

<div align="center">

<img src="https://github.com/user-attachments/assets/2b0d4dc3-0cfd-44b2-a71c-67774e8eef3b" width="200"/>
<img src="https://github.com/user-attachments/assets/2b69127b-0d19-4243-8e43-ba6059259939" width="267"/>
<img src="https://github.com/user-attachments/assets/fc622f36-0ee6-4c17-8b6a-2977792b2b9a" width="200"/>

</div>

<br>

The resulting dataset comprised approximately 5,146 high-resolution images, representing 41 distinct species of Algerian plants. These plants were meticulously identified and categorized by the experts, ensuring accurate labeling and classification for the machine learning model. The following table summarizes the dataset : 

<div align="center">
    
| **Attribute**                              | **Details**                                                       |
|--------------------------------------------|-------------------------------------------------------------------|
| **Size**                           | 604.1 MB                                                          |
| **Number of classes**                      | 41 different plant classes                                         |
| **Total number of instances**              | 5146 pictures                                                     |
| **Average number of images per class**     | About 100 pictures                                                     |
| **Dataset source**                         | The National Plant Protection Institute - Labiod Medjadja |
| **Examples**                         | Asphodel - Pot Marigold - Baby Sun Rose - Rapeseed   |


</div>


### II - Data Preparation & Modelling
After collecting the dataset of plant images, we now move to a crucial phase in the data processing pipeline: importing, preprocessing, and preparing the data for classification using Vision Transformers (ViT). This phase is essential for structuring the data and ensuring that the model can effectively learn from it. To achieve accurate plant classification, the pipeline is broken down into multiple steps, each designed to handle different aspects of data processing and modeling. These steps are as follows : 

1. [Importing & Batching Data](documentation/batching%20data.md)
2. [Hyperparameter Tuning](documentation/hyperparameter%20tuning.md)
3. [Data Augmentation](documentation/data%20augmentation.md)
4. [Inside ViT's Architecture]()
5. [Model Deployment](documentation/model%20deployement.md)


## Results 
> [!NOTE]  
> The following image illustrates results from **only 60 epochs, not the complete 85 epochs**, which would reflect the true final results.

The model's performance over the course of training reveals a significant improvement in accuracy and a notable reduction in loss. In the first epoch, the model recorded an accuracy of only 5.53% with a loss of 4.5985, indicating that it struggled to correctly classify the images. However, by the second epoch, there was a marked improvement, with accuracy rising to 9.14% and loss decreasing to 3.5938. This upward trend continued throughout the training process.

By the final epoch (Epoch 85), the model achieved an impressive accuracy of 91.21% and a loss of 0.2832. This substantial increase in accuracy demonstrates that the model effectively learned to classify the plant species from the dataset, suggesting that the implemented techniques, including data augmentation and the Vision Transformer architecture, were successful. The low final loss value further indicates that the model is not only accurate but also well-calibrated, suggesting it can generalize effectively to unseen data. Overall, these results highlight the effectiveness of the training strategy and the robustness of the model in handling the complexities of the dataset.

<div align="center">
<img src="https://github.com/user-attachments/assets/c6edb940-24ba-4a66-922c-1e02f3841df2" width="400"/>
</div>

## Predictions 
The model’s overall performance was good, achieving acceptable accuracy, but some mispredictions occurred where certain plants were confused for similar-looking species. These misclassifications are likely due to visual similarities between plant species that share common features, such as leaf shapes, textures, or color patterns especially when there is a small dataset. This suggests that while the model effectively learned to distinguish the majority of classes, subtle differences between some plants proved challenging. Such mispredictions are not uncommon in plant classification tasks, where even human experts may struggle to differentiate between visually similar species. Further fine-tuning of the model, additional training data, or the inclusion of more distinguishing features could help improve accuracy and reduce these errors.

<div align="center">
<img src="https://github.com/user-attachments/assets/16b757d6-04a6-4adf-b58b-f7879d510edb" width="500"/>
</div>


# Flutter App Implementation
## Figma App Design

For the design of the app, I used Figma and opted for a minimalist, plant-oriented aesthetic to maintain clarity and focus on the app’s functionality. The design consists of over 14 thoughtfully crafted pages, including a custom 3D logo that aligns with the overall green and red theme used throughout the app interface. The design integrates these colors seamlessly into both the logo and the various UI elements for a cohesive look and feel. 
<br>

<div align="center">
<img src="https://github.com/user-attachments/assets/493cfcbf-3d4e-484f-bb60-7277b64aa015" width="200"/>
</div>
<br>

I created 5 onboarding pages to introduce new users to the app's features and functionality. The home page features a scrollable list of detectable plants displayed in a card format, where users can tap on a plant to reveal additional information. A search bar is also integrated on the home page, allowing users to input the name of a plant and instantly access relevant details.
<br>
<div align="center">

<img src="https://github.com/user-attachments/assets/3d1378d3-51aa-41d7-9075-ce5b76e4b15d" width="150"/>
<img src="https://github.com/user-attachments/assets/512d0778-faa0-4249-ab7b-3a9948779eb8" width="150"/>
<img src="https://github.com/user-attachments/assets/4f8ccfcb-8a16-4ecd-85ce-d8802a23b346" width="150"/>
<img src="https://github.com/user-attachments/assets/a4756c58-2474-42a4-b71c-63698ab9467b" width="150"/>
<img src="https://github.com/user-attachments/assets/424da0a4-4b96-4fb7-b90a-0ae69f206252" width="150"/>
</div>

<br>



In addition, there is a "Tips" page offering guidance on how to use the app, plant care tips, and other useful information for plant enthusiasts. A user profile page is included, featuring a profile picture option, basic settings, and login/logout functionality to enhance personalization. The most crucial part of the app is the plant identification page, which allows users to either take a photo using their camera or upload an image from their gallery for identification. This key feature makes the app highly functional and user-friendly, offering a seamless experience for plant lovers looking to explore and learn about various species.

<br>
<div align="center">

<img src="https://github.com/user-attachments/assets/b891fab0-aa42-4022-8e68-225df1e9c095" width="152"/>
<img src="https://github.com/user-attachments/assets/2241fc41-f88c-43ea-a2cd-f7722347741c" width="151"/>
<img src="https://github.com/user-attachments/assets/5f6bf9d4-6c3c-4b86-8091-16dcf29fbc3f" width="155"/>
<img src="https://github.com/user-attachments/assets/16c52d64-5dc4-4a96-9ab8-53b1f1bb71db" width="155"/>
<img src="https://github.com/user-attachments/assets/e90de6ab-3925-49fb-93d2-3efc1b17ad70" width="150"/>
</div>

<br>







## Heuristics 

I was able to integrate several well-established heuristics into the design, including:

- **Consistency:** The design remained uniform across the entire application, with actions following a clear, logical order, ensuring that users could easily navigate and understand the app's functionality without confusion. This consistency helps create a seamless user experience.
- **Recognition rather than recall:** By prioritizing images and icons over text-heavy elements, the design allows users to recognize features and actions more easily rather than relying on memory. This approach reduces cognitive load and makes navigation more intuitive.
- **Aesthetic and minimalist design:** The interfaces were kept simple and uncluttered, presenting only the most essential information. This minimalist approach enables users to focus solely on key elements, enhancing usability and reducing distractions for a cleaner, more focused experience.
  


## App Workflow  

As shown in the sequence diagram, the user first selects an image through the app's user interface, either by capturing a new photo or uploading one from their gallery. Once the image is selected, the app loads the pre-trained model, which is stored in a `.tflite` format (which is flutter-friendly) , directly into the app. This model has been specifically trained to classify images into one of 41 distinct plant classes.

<div align="center">
<img src="https://github.com/user-attachments/assets/0c88bbcc-1558-484d-a999-642e6aba42d5" width="500"/>
</div>

After the model is loaded, the image is processed and classified into one of these plant categories. The classification results are then returned and sent back through the app's interface, where they are displayed to the user. The user is able to view the identified plant species along with additional information, ensuring a smooth and responsive interaction. This entire process, from image selection to displaying the results, is designed to be efficient, ensuring quick identification while maintaining user-friendly navigation.


---



## Project Limitations 

