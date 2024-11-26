#!/bin/bash
#
#
#
# Traces:
#    403.gcc-16Bperl $PYTHIA_HOME/scripts/create_jobfile.pl --exe $PYTHIA_HOME/bin/perceptron-multi-multi-no-ship-1core --tlist MICRO21_1C.tlist --exp MICRO21_1C.exp --local 1 > jobfile.sh
#    410.bwaves-1963B
#    429.mcf-184B
#    429.mcf-192B
#    429.mcf-51B
#    433.milc-127B
#    436.cactusADM-1804B
#    437.leslie3d-149B
#    437.leslie3d-232B
#    437.leslie3d-265B
#    437.leslie3d-271B
#    445.gobmk-30B
#    445.gobmk-36B
#    450.soplex-247B
#    459.GemsFDTD-765B
#
#
# Experiments:
#    nopref: --warmup_instructions=30000000 --simulation_instructions=50000000 --config=$(PYTHIA_HOME)/config/nopref.ini
#    spp: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=spp_dev2 --config=$(PYTHIA_HOME)/config/spp_dev2.ini
#    bingo: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=bingo --config=$(PYTHIA_HOME)/config/bingo.ini
#    mlop: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=mlop --config=$(PYTHIA_HOME)/config/mlop.ini
#    pythia: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini
#    nopref_MTPS150: --warmup_instructions=30000000 --simulation_instructions=50000000 --config=$(PYTHIA_HOME)/config/nopref.ini --dram_io_freq=150
#    spp_MTPS150: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=spp_dev2 --config=$(PYTHIA_HOME)/config/spp_dev2.ini --dram_io_freq=150
#    bingo_MTPS150: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=bingo --config=$(PYTHIA_HOME)/config/bingo.ini --dram_io_freq=150
#    mlop_MTPS150: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=mlop --config=$(PYTHIA_HOME)/config/mlop.ini --dram_io_freq=150
#    pythia_MTPS150: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini --dram_io_freq=150
#    nopref_MTPS300: --warmup_instructions=30000000 --simulation_instructions=50000000 --config=$(PYTHIA_HOME)/config/nopref.ini --dram_io_freq=300
#    spp_MTPS300: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=spp_dev2 --config=$(PYTHIA_HOME)/config/spp_dev2.ini --dram_io_freq=300
#    bingo_MTPS300: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=bingo --config=$(PYTHIA_HOME)/config/bingo.ini --dram_io_freq=300
#    mlop_MTPS300: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=mlop --config=$(PYTHIA_HOME)/config/mlop.ini --dram_io_freq=300
#    pythia_MTPS300: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini --dram_io_freq=300
#    nopref_MTPS600: --warmup_instructions=30000000 --simulation_instructions=50000000 --config=$(PYTHIA_HOME)/config/nopref.ini --dram_io_freq=600
#    spp_MTPS600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=spp_dev2 --config=$(PYTHIA_HOME)/config/spp_dev2.ini --dram_io_freq=600
#    bingo_MTPS600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=bingo --config=$(PYTHIA_HOME)/config/bingo.ini --dram_io_freq=600
#    mlop_MTPS600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=mlop --config=$(PYTHIA_HOME)/config/mlop.ini --dram_io_freq=600
#    pythia_MTPS600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini --dram_io_freq=600
#    nopref_MTPS1200: --warmup_instructions=30000000 --simulation_instructions=50000000 --config=$(PYTHIA_HOME)/config/nopref.ini --dram_io_freq=1200
#    spp_MTPS1200: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=spp_dev2 --config=$(PYTHIA_HOME)/config/spp_dev2.ini --dram_io_freq=1200
#    bingo_MTPS1200: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=bingo --config=$(PYTHIA_HOME)/config/bingo.ini --dram_io_freq=1200
#    mlop_MTPS1200: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=mlop --config=$(PYTHIA_HOME)/config/mlop.ini --dram_io_freq=1200
#    pythia_MTPS1200: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini --dram_io_freq=1200
#    nopref_MTPS4800: --warmup_instructions=30000000 --simulation_instructions=50000000 --config=$(PYTHIA_HOME)/config/nopref.ini --dram_io_freq=4800
#    spp_MTPS4800: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=spp_dev2 --config=$(PYTHIA_HOME)/config/spp_dev2.ini --dram_io_freq=4800
#    bingo_MTPS4800: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=bingo --config=$(PYTHIA_HOME)/config/bingo.ini --dram_io_freq=4800
#    mlop_MTPS4800: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=mlop --config=$(PYTHIA_HOME)/config/mlop.ini --dram_io_freq=4800
#    pythia_MTPS4800: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini --dram_io_freq=4800
#    nopref_MTPS9600: --warmup_instructions=30000000 --simulation_instructions=50000000 --config=$(PYTHIA_HOME)/config/nopref.ini --dram_io_freq=9600
#    spp_MTPS9600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=spp_dev2 --config=$(PYTHIA_HOME)/config/spp_dev2.ini --dram_io_freq=9600
#    bingo_MTPS9600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=bingo --config=$(PYTHIA_HOME)/config/bingo.ini --dram_io_freq=9600
#    mlop_MTPS9600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=mlop --config=$(PYTHIA_HOME)/config/mlop.ini --dram_io_freq=9600
#    pythia_MTPS9600: --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini --dram_io_freq=9600
#
#
#
#




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/403.gcc-16B.champsimtrace.xz > 403.gcc-16B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/403.gcc-16B.champsimtrace.xz > 403.gcc-16B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/403.gcc-16B.champsimtrace.xz > 403.gcc-16B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/403.gcc-16B.champsimtrace.xz > 403.gcc-16B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/403.gcc-16B.champsimtrace.xz > 403.gcc-16B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/403.gcc-16B.champsimtrace.xz > 403.gcc-16B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/403.gcc-16B.champsimtrace.xz > 403.gcc-16B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/410.bwaves-1963B.champsimtrace.xz > 410.bwaves-1963B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/410.bwaves-1963B.champsimtrace.xz > 410.bwaves-1963B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/410.bwaves-1963B.champsimtrace.xz > 410.bwaves-1963B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/410.bwaves-1963B.champsimtrace.xz > 410.bwaves-1963B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/410.bwaves-1963B.champsimtrace.xz > 410.bwaves-1963B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/410.bwaves-1963B.champsimtrace.xz > 410.bwaves-1963B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/410.bwaves-1963B.champsimtrace.xz > 410.bwaves-1963B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/429.mcf-184B.champsimtrace.xz > 429.mcf-184B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/429.mcf-184B.champsimtrace.xz > 429.mcf-184B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/429.mcf-184B.champsimtrace.xz > 429.mcf-184B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/429.mcf-184B.champsimtrace.xz > 429.mcf-184B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/429.mcf-184B.champsimtrace.xz > 429.mcf-184B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/429.mcf-184B.champsimtrace.xz > 429.mcf-184B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/429.mcf-184B.champsimtrace.xz > 429.mcf-184B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/429.mcf-192B.champsimtrace.xz > 429.mcf-192B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/429.mcf-192B.champsimtrace.xz > 429.mcf-192B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/429.mcf-192B.champsimtrace.xz > 429.mcf-192B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/429.mcf-192B.champsimtrace.xz > 429.mcf-192B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/429.mcf-192B.champsimtrace.xz > 429.mcf-192B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/429.mcf-192B.champsimtrace.xz > 429.mcf-192B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/429.mcf-192B.champsimtrace.xz > 429.mcf-192B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/429.mcf-51B.champsimtrace.xz > 429.mcf-51B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/429.mcf-51B.champsimtrace.xz > 429.mcf-51B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/429.mcf-51B.champsimtrace.xz > 429.mcf-51B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/429.mcf-51B.champsimtrace.xz > 429.mcf-51B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/429.mcf-51B.champsimtrace.xz > 429.mcf-51B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/429.mcf-51B.champsimtrace.xz > 429.mcf-51B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/429.mcf-51B.champsimtrace.xz > 429.mcf-51B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/433.milc-127B.champsimtrace.xz > 433.milc-127B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/433.milc-127B.champsimtrace.xz > 433.milc-127B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/433.milc-127B.champsimtrace.xz > 433.milc-127B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/433.milc-127B.champsimtrace.xz > 433.milc-127B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/433.milc-127B.champsimtrace.xz > 433.milc-127B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/433.milc-127B.champsimtrace.xz > 433.milc-127B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/433.milc-127B.champsimtrace.xz > 433.milc-127B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/436.cactusADM-1804B.champsimtrace.xz > 436.cactusADM-1804B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/436.cactusADM-1804B.champsimtrace.xz > 436.cactusADM-1804B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/436.cactusADM-1804B.champsimtrace.xz > 436.cactusADM-1804B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/436.cactusADM-1804B.champsimtrace.xz > 436.cactusADM-1804B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/436.cactusADM-1804B.champsimtrace.xz > 436.cactusADM-1804B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/436.cactusADM-1804B.champsimtrace.xz > 436.cactusADM-1804B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/436.cactusADM-1804B.champsimtrace.xz > 436.cactusADM-1804B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/437.leslie3d-149B.champsimtrace.xz > 437.leslie3d-149B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/437.leslie3d-149B.champsimtrace.xz > 437.leslie3d-149B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/437.leslie3d-149B.champsimtrace.xz > 437.leslie3d-149B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/437.leslie3d-149B.champsimtrace.xz > 437.leslie3d-149B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/437.leslie3d-149B.champsimtrace.xz > 437.leslie3d-149B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/437.leslie3d-149B.champsimtrace.xz > 437.leslie3d-149B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/437.leslie3d-149B.champsimtrace.xz > 437.leslie3d-149B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/437.leslie3d-232B.champsimtrace.xz > 437.leslie3d-232B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/437.leslie3d-232B.champsimtrace.xz > 437.leslie3d-232B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/437.leslie3d-232B.champsimtrace.xz > 437.leslie3d-232B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/437.leslie3d-232B.champsimtrace.xz > 437.leslie3d-232B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/437.leslie3d-232B.champsimtrace.xz > 437.leslie3d-232B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/437.leslie3d-232B.champsimtrace.xz > 437.leslie3d-232B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/437.leslie3d-232B.champsimtrace.xz > 437.leslie3d-232B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/437.leslie3d-265B.champsimtrace.xz > 437.leslie3d-265B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/437.leslie3d-265B.champsimtrace.xz > 437.leslie3d-265B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/437.leslie3d-265B.champsimtrace.xz > 437.leslie3d-265B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/437.leslie3d-265B.champsimtrace.xz > 437.leslie3d-265B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/437.leslie3d-265B.champsimtrace.xz > 437.leslie3d-265B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/437.leslie3d-265B.champsimtrace.xz > 437.leslie3d-265B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/437.leslie3d-265B.champsimtrace.xz > 437.leslie3d-265B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/437.leslie3d-271B.champsimtrace.xz > 437.leslie3d-271B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/437.leslie3d-271B.champsimtrace.xz > 437.leslie3d-271B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/437.leslie3d-271B.champsimtrace.xz > 437.leslie3d-271B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/437.leslie3d-271B.champsimtrace.xz > 437.leslie3d-271B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/437.leslie3d-271B.champsimtrace.xz > 437.leslie3d-271B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/437.leslie3d-271B.champsimtrace.xz > 437.leslie3d-271B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/437.leslie3d-271B.champsimtrace.xz > 437.leslie3d-271B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/445.gobmk-30B.champsimtrace.xz > 445.gobmk-30B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/445.gobmk-30B.champsimtrace.xz > 445.gobmk-30B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/445.gobmk-30B.champsimtrace.xz > 445.gobmk-30B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/445.gobmk-30B.champsimtrace.xz > 445.gobmk-30B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/445.gobmk-30B.champsimtrace.xz > 445.gobmk-30B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/445.gobmk-30B.champsimtrace.xz > 445.gobmk-30B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/445.gobmk-30B.champsimtrace.xz > 445.gobmk-30B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/445.gobmk-36B.champsimtrace.xz > 445.gobmk-36B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/445.gobmk-36B.champsimtrace.xz > 445.gobmk-36B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/445.gobmk-36B.champsimtrace.xz > 445.gobmk-36B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/445.gobmk-36B.champsimtrace.xz > 445.gobmk-36B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/445.gobmk-36B.champsimtrace.xz > 445.gobmk-36B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/445.gobmk-36B.champsimtrace.xz > 445.gobmk-36B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/445.gobmk-36B.champsimtrace.xz > 445.gobmk-36B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/450.soplex-247B.champsimtrace.xz > 450.soplex-247B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/450.soplex-247B.champsimtrace.xz > 450.soplex-247B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/450.soplex-247B.champsimtrace.xz > 450.soplex-247B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/450.soplex-247B.champsimtrace.xz > 450.soplex-247B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/450.soplex-247B.champsimtrace.xz > 450.soplex-247B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/450.soplex-247B.champsimtrace.xz > 450.soplex-247B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/450.soplex-247B.champsimtrace.xz > 450.soplex-247B_pythia_MTPS9600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini  -traces /home/U210050044/Pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > 459.GemsFDTD-765B_pythia.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=150  -traces /home/U210050044/Pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > 459.GemsFDTD-765B_pythia_MTPS150.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=300  -traces /home/U210050044/Pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > 459.GemsFDTD-765B_pythia_MTPS300.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=600  -traces /home/U210050044/Pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > 459.GemsFDTD-765B_pythia_MTPS600.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=1200  -traces /home/U210050044/Pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > 459.GemsFDTD-765B_pythia_MTPS1200.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=4800  -traces /home/U210050044/Pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > 459.GemsFDTD-765B_pythia_MTPS4800.out 2>&1 &




/home/U210050044/Pythia/bin/perceptron-multi-multi-no-ship-1core --warmup_instructions=30000000 --simulation_instructions=50000000 --l2c_prefetcher_types=scooby --config=/home/U210050044/Pythia/config/pythia.ini --dram_io_freq=9600  -traces /home/U210050044/Pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > 459.GemsFDTD-765B_pythia_MTPS9600.out 2>&1 &
wait