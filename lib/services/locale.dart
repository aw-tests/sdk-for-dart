part of dart_appwrite;

class Locale extends Service {
    Locale(Client client): super(client);

     /// Get User Locale
     ///
     /// Get the current user location based on IP. Returns an object with user
     /// country code, country name, continent name, continent code, ip address and
     /// suggested currency. You can use the locale header to get the data in a
     /// supported language.
     /// 
     /// ([IP Geolocation by DB-IP](https://db-ip.com))
     ///
     Future get() async {
        final String path = '/locale';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Continents
     ///
     /// List of all continents. You can use the locale header to get the data in a
     /// supported language.
     ///
     Future getContinents() async {
        final String path = '/locale/continents';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Countries
     ///
     /// List of all countries. You can use the locale header to get the data in a
     /// supported language.
     ///
     Future getCountries() async {
        final String path = '/locale/countries';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List EU Countries
     ///
     /// List of all countries that are currently members of the EU. You can use the
     /// locale header to get the data in a supported language.
     ///
     Future getCountriesEU() async {
        final String path = '/locale/countries/eu';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Countries Phone Codes
     ///
     /// List of all countries phone codes. You can use the locale header to get the
     /// data in a supported language.
     ///
     Future getCountriesPhones() async {
        final String path = '/locale/countries/phones';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Currencies
     ///
     /// List of all currencies, including currency symbol, name, plural, and
     /// decimal digits for all major and minor currencies. You can use the locale
     /// header to get the data in a supported language.
     ///
     Future getCurrencies() async {
        final String path = '/locale/currencies';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Languages
     ///
     /// List of all languages classified by ISO 639-1 including 2-letter code, name
     /// in English, and name in the respective language.
     ///
     Future getLanguages() async {
        final String path = '/locale/languages';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }
}