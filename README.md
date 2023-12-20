# Impact-Data-Mining
An approach to extracting and summarizing key infrastructure and community impact information from wind disaster reconnaissance reports using Zero-shot text classification with BART-large models, highlighted by keywords. It features a practical example with Hurricane Ian damage in the Structural Engineering Reconnaissance report (StEER), and extends its application to a case study on the Mw 7.8 Kaharamanmaras - Turkiye Earthquake by StEER, demonstrating the model's versatality.

## Related Publications:
This project is based on the research paper titled "Unstructured to Actionable: Extracting Wind Event Impact Data for Enhanced Infrastructure Resilience" by H. Pham (hpham12@vt.edu) and M. Arul (marul@vt.edu). The link to the full paper will be provided soon.

## Main Inputs
The primary inputs for this project are reconnaissance reports in PDF format and relevant keywords tailored to the areas of interest in the study.

## Usage
[(https://github.com/hpham1295/Impact-Data-Mining/blob/main/Framework.png)](https://github.com/hpham1295/Impact-Data-Mining/blob/main/Framework.png)

The diagram illustrates the project's execution flow, highlighting two primary phases: Implementation and Evaluation. The Implementation phase involves running the code to produce results, while the Evaluation phase assesses result quality. Initially, convert the PDF report to .docx format for optimal text structure retention. Decide if any sections are unnecessary—if so, use 1a_preprocessing to review the structure with the anytree library, which may differ from the document's layout. Sections to exclude should be updated in 0_input.ipynb before moving to 1b_preprocessing. If all sections are pertinent, simply start with 1b_preprocessing after setting up the input. Continue with notebooks 2a and 2b to extract sentences, followed by 3_creating_summaries for compiling impact summaries. In the Evaluation phase, manually label impact sentences in 4_data_labeling, then use 5_analyzing_results to calculate confusion matrices and F1 scores, evaluating the outcome. Detailed guidance for each notebook's usage and input provision is available within the respective files. Additionally, a comprehensive explanation of the code and methodologies can be found in H. Pham's master's thesis, available [here](http://hdl.handle.net/10919/116151)
.

## Important notes:
- All notebooks are designed in and should be run on Google Colab.
- Users are advised to maintain the folder structure as in the repository to  simplify navigation and access to files within the notebooks.
- For 2a_extracting_impact_sentences and 3_creating_summaries, which utilize BART large MNLI and BART large CNN models, the use of GPU A100 or at least V100 is recommended. This ensures efficient handling of the extensive ML parameters and reduces processing time.

## Report's links and models:
- BART large MNLI model: https://huggingface.co/facebook/bart-large-mnli
- BART large CNN model: https://huggingface.co/facebook/bart-large-cnn
- Hurricane Ian reconnaissance report: https://doi.org/10.17603/ds2-3pc2-7p82
- Mw 7.8 Kaharamanmaras - Turkiye Earthquake reconnaissance report: https://doi.org/10.17603/ds2-mm04-xq43
