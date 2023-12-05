This repository contains the codebase of a major portion of my Master's thesis, [Investigation into the Effect of Dynamic Acoustical Features in Deep Neural Network-based Speech Classification](https://doi.org/10.13140/RG.2.2.32371.91686).

**Abstract:** Speech-related research has a wide range of applications. Although speech recognition has achieved significant success using integrated and efficient models, still some series of challenges remain as the linguistic-acoustic patterns are perturbed by speakers' individual articulation gestures and environmental noises. Temporally overlapping linguistic-acoustic features (i.e., formant trajectories) are found for the vocal tract dynamics in word pronunciation, whereas quasi-stationary and non-overlapped features are obtained for vowels. This thesis presents a comprehensive study on how Deep Neural Network (DNN)-based classifiers have marginalized variability due to speaker gestures and environmental noises, and how they improved classification performances focusing only on linguistic-acoustic patterns. Here, vocal tract resonance-based acoustic features, formant trajectories, are considered as the linguistic-acoustic features to investigate vocal tract dynamics. Vocal tract-induced variabilities are evaluated for both vowels and words by the coefficient of variations of the acoustical feature, and it is justified that the words have more variations than the vowels. Furthermore, an ANOVA (Analysis Of Variance) test has been performed on formant frequency-related features of a vowel and a word sample. Then, the statistical significance of all 14 formant frequency-related features is determined through Tukey's HSD (Honestly Significant Difference) test. This study also finds out the optimum number of Mel-Frequency Cepstral Coefficient (MFCC) features. Many speech-related researches employ MFCCs as acoustic features. However, finding the optimum number of MFCCs is an active research question. A 4-fold cross-validation approach is used in a DNN with \textit{Adam} optimizer to compute performances in five different performance metrics, namely \textit{confusion matrix, classification accuracy, Area Under Curve of Receiver Operating Characteristic (AUC-ROC), F\textsubscript{1} score,} and \textit{Cohen's Kappa ($\kappa$)}. The same classification is performed by varying the input features and hidden layers of a general DNN architecture. Accordingly, the contributions of those individual feature sets and hidden layers are also identified. Experiments did not find any considerable contribution of formant transitions and dispersions in speech classification, and five hidden layers were optimum network configuration. In all different cases, this study has justified the hypothesis—word classification falls behind vowel classification due to variability. Furthermore, all performance metrics gave the best score for 24/25 MFCCs; hence this thesis suggests that the optimum number of MFCCs should be 25, although many existing studies use only 13 MFCCs. Also, it verifies that increasing the number of MFCCs yields better classification metrics with a lower computational burden than the increment of hidden layers. Using formant frequency, it has achieved as high as 89% classification accuracy and 99% AUC for vowels. For words, these scores were 64% and 91%, respectively. These scores are achieved with five hidden layer configurations having only 28,263 trainable parameters with five formant frequency features only. In the MFCC-based speech classification, the optimum number of MFCCs obtained from this study returns classification accuracies of 99% and 91% for vowel and word classification, respectively, where the vowel classification score outperforms state-of-the-art results. Such a good performance proves the efficacy of the proposed method.

The following papers and dataset are linked with this repository:
- [How many Mel‐frequency cepstral coefficients to be utilized in speech recognition? A study with the Bengali language](https://doi.org/10.1049/tje2.12082)
- [Effect of vocal tract dynamics on neural network-based speech recognition: A Bengali language-based study](https://doi.org/10.1111/exsy.13045)
- [Outcomes of deep neural network hyperparameter tuning on Bengali speech token classification](https://doi.org/10.1109/ICISET54810.2022.9775837)
- [Isolated Bengali vowel and word speech sounds](https://doi.org/10.17632/2h6975kdsx.1)

If you use the dataset or any of the codes in this repository, please cite the following paper(s) as appropriate:
```bibtex
@article{hasan2021how,
    title={How Many {M}el-Frequency Cepstral Coefficients to Be Utilized in Speech Recognition? A Study with the {B}engali Language},
    author={Hasan, Md Rakibul and Hasan, Md Mahbub and Hossain, Md Zakir},
    journal={The Journal of Engineering},
    volume={2021},
    number={12},
    pages={817--827},
    year={2021},
    publisher={Wiley Online Library},
    doi={10.1049/tje2.12082}
}

@article{hasan2022effect,
    title={Effect of Vocal Tract Dynamics on Neural Network-Based Speech Recognition: A {Bengali} Language-Based Study},
    author={Hasan, Md Rakibul and Hasan, Md Mahbub and Hossain, Md Zakir},
    journal={Expert Systems},
    volume={39},
    number={9},
    pages={e13045},
    year={2022},
    publisher={Wiley Online Library},
    doi={10.1111/exsy.13045}
}

@inproceedings{hasan2022outcomes,
    title={Outcomes of Deep Neural Network Hyperparameter Tuning on Bengali Speech Token Classification},
    author={Hasan, Md Rakibul and Hasan, Md Mahbub and Hossain, Md Zakir},
    booktitle={2022 International Conference on Innovations in Science, Engineering and Technology (ICISET)},
    pages={445--450},
    year={2022},
    organization={IEEE},
    doi={10.1109/ICISET54810.2022.9775837}
}

@misc{hasan2021isolated,
    title={Isolated {B}engali Vowel and Word Speech Sounds},
    author={Hasan, Md Rakibul and Hasan, Md Mahbub},
    howpublished={Mendeley Data},
    note={V1},
    year={2021},
    doi={10.17632/2h6975kdsx.1}
}
```

Aplogies for the disorganisations of `Source_codes` directory. Proper version control as per git was not maintained during the development of the thesis. For any queries, please contact me; I will try to help as much as I can.