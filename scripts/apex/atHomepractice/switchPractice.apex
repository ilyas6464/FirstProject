/**
Practice
Season: Winter - boots
spring - sneakers
summer - sandals
autumn - loafers
*/

String season = 'summer';

switch on season{
    when 'winter'{
        System.debug('wear your boots');
    }when 'spring'{
        System.debug('wear your sneakers');
    }when 'summer'{
        System.debug('wear your sandals');
    }when else{`
        System.debug('wear your loafers');
    }
}