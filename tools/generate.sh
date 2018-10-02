#!/usr/bin/env bash

participants="Participant = {"
things="Thing = {"
scoreRange=5
score="Score = { 0..${scoreRange} }"
mandatory="Mandatory = { }"
max="MaxNbParticipants = {"
min="MinNbParticipants = { }"
voted="Voted = {"
init="AllottedInit = { }"
initFinal="AllottedInitFinal = { }"

nbParticipants=20
nbThings=5
nbVotes=3
for i in $(seq 1 ${nbThings}); do
	thing="T${i}"
	things="${things} ${thing} ;"
	minRand=$((${nbParticipants} / ${nbThings} + 1))
	rand=$((${RANDOM} % (${nbParticipants} - ${minRand}) + minRand))
	if [ "${rand}" -ne 0 ]; then
		max="${max} (${thing}, ${rand}) ;"
	fi
done
things=$(echo ${things} | sed 's/;$/}/')
max=$(echo ${max} | sed 's/.$/}/')
for i in $(seq 1 ${nbParticipants}); do
	part="P${i}"
	participants="${participants} ${part} ;"
	# generate random values to select nbVotes things. Very inefficient, but that's ok.
	rands=()
	for j in $(seq 1 ${nbVotes}); do
		index=$((${j} - 1))
		while [ -z "${rands[${index}]}" ]; do
			rand=$((${RANDOM} % ${nbThings} + 1))
			unique=true
			for k in $(seq 0 $((${index}-1))); do
				if [ "${rands[${k}]}" == "${rand}" ]; then
					unique=false
					break
				fi
			done
			if [ ${unique} == "true" ]; then
				rands[${index}]=${rand}
			fi
		done
	done
	# vote for things
	for j in "${rands[@]}"; do
		thing="T${j}"
		sc=$((${RANDOM} % ${scoreRange} + 1))
		voted="${voted} (${part}, ${thing}, ${sc}) ;"
	done
done
participants=$(echo ${participants} | sed 's/;$/}/')
voted=$(echo ${voted} | sed 's/;$/}/g')

echo -e "{"
echo -e "\t${participants}"
echo -e "\t${things}"
echo -e "\t${score}"
echo -e "\t${mandatory}"
echo -e "\t${max}"
echo -e "\t${min}"
echo -e "\t${voted}"
echo -e "\t${init}"
echo -e "\t${initFinal}"
echo -e "}"

# vim: set noexpandtab:
