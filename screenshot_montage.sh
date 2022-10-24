# Screenshot Montage Code for Borst et al. (2016) Reproduction
## Requires FreeSurfer 

SUBJECTS_DIR=/Users/jkyao/oak/LMB_Stanford/LMB_BIDS/derivatives/freesurfer
OUT_DIR=/Users/jkyao/Desktop/LMB
sublist=("107" "108" "1210" "1211" "1215" "1234" "1335" "1339" "1380" "1395" "1444" "1452" "1453" "1468" "173" "230" "309" "984")
surfaceTypes=("inflated" "pial" "white")


for SUB in ${sublist[@]};do
	echo $SUB
	for surf in ${surfaceTypes[@]};do
		echo $surf
		freeview -f ${SUBJECTS_DIR}/sub-${SUB}/surf/rh.${surf}:curvature_method=binary -viewport 3D -f ${SUBJECTS_DIR}/sub-${SUB}/surf/lh.${surf}:curvature_method=binary -viewport 3D -view inferior -ss ${OUT_DIR}/${surf}/${SUB}_${surf}_inferior.png
	done
done