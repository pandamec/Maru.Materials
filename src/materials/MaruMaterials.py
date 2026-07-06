import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.interpolate import interp1d
from scipy.interpolate import UnivariateSpline
from .base import Material

class Glass(Material):

    def __init__(self):
        super().__init__("Glass")

    def thermalconductivity(self):

        k1=self._load_property("borosilicateglass_lambda_Zych1988.csv")
        k2=self._load_property("borosilicateglass_lambda_Zaitlin1974.csv")
        return k1,k2
    