import pandas as pd
import matplotlib.pyplot as plt
df = pd.read_csv("rollup_1C_base_config.csv")
# print(df)
exp_list = df["Exp"].unique()
print(exp_list)
avg_ipc_list = []
for exp in exp_list:
    avg_ipc = df[df["Exp"] == exp]["Core_0_IPC"].mean()
    avg_ipc_list.append(avg_ipc)
plt.plot)