INFO

    download_videos.sh in tools/data/{dataset name} will download the videos off the links in your txt

    The file hierarchy is based off the mmaaction tutorial kineticstiny set in demo

    delete_broken_annot.py will remove broken videos to stop training breaking


TODO:

    delete_broken_annot is not working all the way. it deletes the video but does not overwrite the txt

    (DONE)create a if video works - if not somewhere
    


PROCESS:
    take csv
    from root dir run bash download_videos.sh in tools/data/survai_var_mk1
    generate videos_filelist
    delete broken annots
    regenerate videos_filelist
    ready to train
    infer with longclassdemo

