#!/bin/sh

read -p "Project name: " project

if [ -z "$project" ]
then
	echo "Project name is required."
	exit
fi

git clone https://github.com/XiMatriarx/hasura.git --depth 1 --branch 'v0.0.1'
mv hasura $project
cd $project
rm -Rf .git
rm -Rf bin
