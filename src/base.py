from pathlib import Path
import pandas as pd


class Material:

    def __init__(self, name):
        self.name = name

    def _load_property(self, filename):
        path = Path(__file__).parent / "database" / filename

        df = pd.read_csv(
            path,
            sep=";",
            decimal=",",
            header=None,
            names=["temperature", "value"]
        )

        return df