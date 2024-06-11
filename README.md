# Impact-Data-Mining
This approach utilizes zero-shot text classification with BART-large models to extract and summarize key information about infrastructure and community impacts from wind disaster reconnaissance reports, emphasizing specific keywords. The accompanying diagram illustrates the overall framework of the project. Included are an evaluation from the Hurricane Ian damage assessment in the Preliminary Virtual Reconnaissance Report (PVRR) by Structural Engineering Reconnaissance (StEER), a verification of impact sentence extraction from the most recent Hurricane Otis PVRR, and a case study application to the Mw 7.8 Kaharamanmaraş - Türkiye Earthquake, demonstrating the model’s adaptability to various disaster contexts.

[(https://github.com/hpham1295/Impact-Data-Mining/blob/main/Framework.png)](https://github.com/hpham1295/Impact-Data-Mining/blob/main/application_framework.png)

## Project Contributors:

- **Huy Pham**, Ph.D. Student, Wind & Society Laboratory, Department of Civil and Environmental Engineering, Virginia Tech, Blacksburg, VA, United States. Email: phamanhuy@vt.edu

- **Monica Arul**, Assistant Professor, Wind & Society Laboratory, Department of Civil and Environmental Engineering, Virginia Tech, Blacksburg, VA, United States. [Google Scholar Profile](https://scholar.google.com/citations?user=2X6cNooAAAAJ&hl=en)
. Email: marul@vt.edu

## Related Publications:
This project is based on the research paper titled "Unstructured to Actionable: Extracting Wind Event Impact Data for Enhanced Infrastructure Resilience" by H. Pham and M. Arul. The link to the full paper will be provided soon.

## Main Inputs
The primary inputs for this project are reconnaissance reports in PDF format and relevant keywords tailored to the areas of interest in the study.

## Usage
[(https://github.com/hpham1295/Impact-Data-Mining/blob/main/Framework.png)](https://github.com/hpham1295/Impact-Data-Mining/blob/main/workflow_diagram.png)

The diagram illustrates the project's execution flow across three primary phases: Data Input, Implementation, and Evaluation.

- **Data Input Phase:** This initial phase involves preparing inputs for the subsequent stages. Start by converting the PDF report into a .docx format to maintain the text structure accurately (Adobe Acrobat Pro is suggested). If certain sections are deemed unnecessary, utilize the optional 00_optional_customize_scope_by_toc.ipynb file to review and possibly exclude them from the table of contents, which might differ from the document's original layout. Update the sections to be excluded and other inputs in 01_input.ipynb before proceeding to preprocessing.

- **Implementation Phase:** Begin processing with 1_preprocessing. Continue with notebooks 2a and 2b to extract impact sentences, followed by 3_generating_comprehensive_summaries.ipynb to compile the impact summaries.

- **Evaluation Phase:** Assess the quality of results by manually labeling impact sentences in 4_data_labeling.ipynb. Then, use 5_analyzing_the_results.ipynb to generate confusion matrices and calculate F1 scores, thereby evaluating the effectiveness of the project.

For detailed guidance on the usage and input requirements of each notebook, refer to the information provided within the respective files. A comprehensive discussion of the code and methodologies used in this project is available in H. Pham's master's thesis, accessible [here](http://hdl.handle.net/10919/116151).

## Important notes:
- All notebooks are designed and should be run on Google Colab.
- Users are advised to maintain the folder structure as in the repository to  simplify navigation and access to files within the notebooks.
- For 2a_extracting_impact_sentences.ipynb and 3_generating_comprehensive_summaries.ipynb, which utilize BART large MNLI and BART large CNN models, the use of GPU A100 is recommended. This ensures efficient handling of the extensive machine learning (ML) parameters and reduces processing time.

## Report's links and models:
- BART large MNLI model: https://huggingface.co/facebook/bart-large-mnli
- BART large CNN model: https://huggingface.co/facebook/bart-large-cnn
- Hurricane Ian reconnaissance report: https://doi.org/10.17603/ds2-3pc2-7p82
- Hurricane Otis reconnaissance report:  https://doi.org/10.17603/ds2-mb7z-xw74
- Mw 7.8 Kaharamanmaras - Turkiye Earthquake reconnaissance report: https://doi.org/10.17603/ds2-mm04-xq43
