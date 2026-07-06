import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.interpolate import interp1d
from scipy.interpolate import UnivariateSpline



class Glass(Material):

    def __init__(self):
        super().__init__("Glass")

    def lambda(self):
        return self._load_property(
            "borosilicateglass_lambda_Zych1988.csv"
        )
    