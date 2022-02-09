INFO

    download_videos.sh in tools/data/{dataset name} will download the videos off the links in your txt

    The file hierarchy is based off the mmaaction tutorial kineticstiny set in demo

    delete_broken_annot.py will remove broken videos to stop training breaking

    LEARNING RATE: reducing learning rate from /8 to /10 seems to give good results. finally broke .6 on all classes


TODO:

    label cosmetic update

PROCESS:
    download csv
    from root dir run bash download_videos.sh in tools/data/survai_var_mk1
    generate videos_filelist
    delete broken annots
    regenerate videos_filelist
    ready to train
        - change work dir in config
        - change class count in swin tiny base config
    infer with longclassdemo


when adjusting classes:
    ctrl f the classes in the train and val csv
