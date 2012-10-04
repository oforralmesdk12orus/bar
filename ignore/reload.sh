pushd .
cd ~/Code/PHP/ormed
./src/ormed/ormedBundle/Mods/modfiles.sh
rm -rf src/ormed/ormedBundle/Entity/*
php app/console doctrine:generate:entities --path="src" ormed
php app/console doctrine:generate:entities --path="src" ormed
pushd .
cd src/ormed/ormedBundle/Scripts/
python entity_adjustments.py
popd
php app/console doctrine:database:drop --force
php app/console doctrine:database:create
php app/console doctrine:schema:create
psql ormed -U postgres -f ignore/create_language.pgsql
psql ormed -U postgres -f src/ormed/ormedBundle/Resources/pgsql/crud_trig.pgsql
php app/console doctrine:fixtures:load
popd
