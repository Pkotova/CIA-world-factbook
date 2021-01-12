function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

   let cia = doc.createElement ( 'cia' );
	doc.appendChild(cia);
        let countries = doc.createElement ( 'countries' );
        cia.appendChild(countries);
            let country = doc.createElement ( 'country' );
            countries.appendChild(country);
                let name = doc.createElement ( 'name' );
                countries.appendChild(name);
                let image_flag = doc.createElement ( 'image_flag' );
                countries.appendChild(image_flag);
                let image_blazon = doc.createElement ( 'image_blazon' );
                countries.appendChild(image_blazon);
                let capital = doc.createElement ( 'capital' );
                countries.appendChild(capital);
                let anthem = doc.createElement ( 'anthem' );
                countries.appendChild(anthem);
					let song = doc.createElement ( 'song' );
					anthem.appendChild(song);
						let title = doc.createElement ( 'tittle' );
						song.appendChild(title);
						let author = doc.createElement ( 'author' );
						song.appendChild(author);
						let year = doc.createElement ( 'year' );
						song.appendChild(year);

    let regions = doc.createElement ( 'regions' );
    cia.appendChild(regions);
            let region = doc.createElement ( 'region' );
            regions.appendChild(region);
                let continent = doc.createElement ( 'continent' );
                region.appendChild(continent);
                let climate = doc.createElement ( 'climate' );
                region.appendChild(climate);
                let timezone = doc.createElement ( 'timezone' );
                region.appendChild(timezone);

    let nations = doc.createElement ( 'nations' );
    cia.appendChild(nations);
            let nation = doc.createElement ( 'nation' );
            nations.appendChild(nation);
                let demonym = doc.createElement ( 'demonym' );
                nation.appendChild(demonym);
                let population = doc.createElement ( 'population' );
                nation.appendChild(population);
                let language = doc.createElement ( 'language' );
                nation.appendChild(language);
                let religion = doc.createElement ( 'religion' );
                nation.appendChild(religion);

    let goverment_types = doc.createElement ( 'goverment_types' );
    cia.appendChild(goverment_types);
        let goverment_type = doc.createElement ( 'goverment_type' );
        goverment_types.appendChild(goverment_type);
            let type = doc.createElement ( 'type' );
            goverment_type.appendChild(type);

    let organizations = doc.createElement ( 'organizations' );
    cia.appendChild(goverment_types);
        let organization = doc.createElement ( 'organization' );
        organizations.appendChild(organization);
            let org_name = doc.createElement ( 'org_name' );
            organization.appendChild(org_name);
            let year_establishment = doc.createElement ( 'year_establishment' );
            organization.appendChild(year_establishment);

//id="0000BG1" region ="EU" nation = "BG" government_type = "GT03" organisation ="ES"
country.setAttribute ( 'id', '0000BG1' );
country.setAttribute ( 'region', 'EU' );
country.setAttribute ( 'nation', 'BG' );
country.setAttribute ( 'government_type', 'GT03' );
country.setAttribute ( 'organisation', 'ES' );

region.setAttribute ( 'reg_id', 'EU' );
nation.setAttribute ( 'nat_id', 'BG' );
goverment_type.setAttribute ( 'gov_id', 'GT03' );
organization.setAttribute ( 'org_id', 'ES' );


name.appendChild ( doc.createTextNode ( 'България' ) );
image_flag.appendChild ( doc.createTextNode ( 'bulgaria_flag.png' ) );
image_blazon.appendChild ( doc.createTextNode ( 'bulgaria_blazon.png' ) );
capital.appendChild ( doc.createTextNode ( 'София' ) );
title.appendChild ( doc.createTextNode ( 'Мила Родино!' ) );
author.appendChild ( doc.createTextNode ( 'Цветан Радославов' ) );
year.appendChild ( doc.createTextNode ( '1965' ) );
continent.appendChild ( doc.createTextNode ( 'Европа' ) );
climate.appendChild ( doc.createTextNode ( 'Умерено континентален' ) );
timezone.appendChild ( doc.createTextNode ( 'UTC+2' ) );
demonym.appendChild ( doc.createTextNode ( 'българи' ) );
population.appendChild ( doc.createTextNode ( '6 999 908' ) );
language.appendChild ( doc.createTextNode ( 'български' ) );
religion.appendChild ( doc.createTextNode ( 'Православно християнство' ) );
type.appendChild ( doc.createTextNode ( 'Парламентарна република' ) );
org_name.appendChild ( doc.createTextNode ( 'Европейски съюз' ) );
year_establishment.appendChild ( doc.createTextNode ( '1958' ) );

    return doc;
}
