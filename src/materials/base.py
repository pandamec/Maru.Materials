from pathlib import Path
import pandas as pd


class Material:

    def __init__(self):
        self
       
    def _load_property(self, units, filename):

        path = Path(__file__).parent / "database" / filename

        df = pd.read_csv(path,
                            sep=";",
                            decimal=",",
                            header=None,
                            names=units)

        return df