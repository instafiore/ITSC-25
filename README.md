# ITSC-25-traffic
This is the repo used in the paper: AI-Enabled Connected Autonomous Vehicles Sustainable Routing in
Urban Areas

The default settings are the same used for the related results achieved in the paper.

The default map is acosta (Bologna)
Results can be found in the file: results.csv

## Dependencies
1. ```conda 23.7.2```
2. ```clingo 5.7.0```
3. ```Eclipse SUMO sumo 1.22.0```

## How to install

```
conda create --name asptraffic
conda activate asptraffic
conda config --append channels conda-forge
conda env update --file environment.yaml
```

### Bologna
The map can be found in `maps/bologna/acosta`

```
export NETWORK_FILE=maps/bologna/acosta/acosta_buslanes.net.xml;
export SUMOCFG_FILE=maps/bologna/acosta/run.sumocfg
export SUMO_PATH=path/to/sumo
export CLINGO_HOME=path/to/clingo
```

### Running
```bash
conda activate asptraffic
python python/main.py
```


# ITSC-25
