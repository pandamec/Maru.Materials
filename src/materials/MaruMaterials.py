import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.interpolate import interp1d
from scipy.interpolate import UnivariateSpline
from .base import Material

class Borosilicate_glass(Material):

    def __init__(self):
        super().__init__()

    def thermalconductivity(self):

        units=["T(K)","lambda(W/mK)"]
        k1=self._load_property(units,"borosilicateglass_lambda_Zych1988.csv")
        k2=self._load_property(units,"borosilicateglass_lambda_Zaitlin1974.csv")
        return k1,k2

    def cte(self):

        units=["T(K)","CTE(1/K)"]
        alpha1=self._load_property(units,"borosilicateglass_cte_White1977.csv")
        return alpha1

class Fusedsilica_glass(Material):

    def __init__(self):
        super().__init__()

    def thermalconductivity(self):
        units=["T(K)","lambda(W/mK)"]
        k1=self._load_property(units,"fusedsilica_lambda_White1997.csv")
        return k1