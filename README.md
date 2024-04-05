Full raw code and detailed explanation are saved in [TSA_US_Energy_Production.pdf](https://github.com/Qifei-C/SARIMA_TSA/blob/main/TSA_US_Energy_Production.pdf). Feel free to take a look and share your comments.

Part of the paper is as follows:

# Introduction

This study focuses on an analysis of a time series dataset from the Federal Reserve Economic Data (FRED), which tracks the monthly electric power generation in the United States (NAICS = 2211). This dataset spans from January 1985 to January 2018 with 397 observations, providing a vast and detailed view of electric production records over multiple decades. By examining this dataset, one could gain valuable insights into long-term patterns and fluctuations in the U.S. electric power sector, a critical component of the nation's industrial infrastructure.

The primary objective of this study is to apply time series analysis techniques to model the monthly electric power generation and to forecast future electricity production. This forecasting is crucial for several stakeholders, including policymakers, energy producers, and environmental analysts, as it aids in planning, policy formulation, and understanding the implications of past and future trends in energy production.

# Forcasting

For forcasting, the predicted values was transformed back by an inverse square-root transformation. The results are as following plot, where the black line is the real values from testing set, blue dash lines are the upper and lower bound of the 95% confidence interval, and the red points are the predicted values. 

![alt text](https://github.com/Qifei-C/SARIMA_TSA/blob/main/result/pic/rdme1.png?raw=true)

The first plot is the forecasted value using final model with the 95% confidence interval for the forecasted values with the real values in the testing set. The second plot is the zoom-in plots of the first plot so that I could see the details. From the plots, one could notice that most of the test sets are within the confidence intervals and the predicted values align with the observed value in the testing set. 

# Conclusion

The goal of this project is achieved. In this project, I successfully overcome challenges like non-stationarity and heteroscedasticity in the data, trained a SARIMA model, and used it to forecast the industrial production (IP) index. The model with the formula form

$$(1+0.3814B-0.408B^2+0.139B^5)\nabla_{1}\nabla_{12}X_t=(1-0.8463B^2)(1-0.7756B^{12})Z_t$$

performs well on the test set. The residuals of this model has been tested with various analysis stratagy to be consisted with White Noise and implies that the model has capture the pattern of the time series. 
