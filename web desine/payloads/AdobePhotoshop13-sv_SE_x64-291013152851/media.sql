CREATE TABLE Branding ( ProductID TEXT NOT NULL REFERENCES Suites (ProductID),resource_type TEXT NOT NULL,resource_data TEXT NOT NULL,PRIMARY KEY (ProductID, resource_type) )
CREATE TABLE DependencyData( PayloadID TEXT NOT NULL REFERENCES Payloads (PayloadID),PayloadIDb TEXT ,type TEXT NOT NULL ,product_family TEXT, product_name TEXT, version TEXT, PRIMARY KEY (PayloadID,PayloadIDb,type,product_family,product_name,version))
CREATE TABLE EULA_Files( productID TEXT NOT NULL, langCode TEXT NOT NULL,eula TEXT NOT NULL,PRIMARY KEY (productID, langCode) )
CREATE TABLE PayloadData( PayloadID TEXT NOT NULL REFERENCES Payloads (PayloadID),domain TEXT NOT NULL,key TEXT NOT NULL,value TEXT NOT NULL,PRIMARY KEY (PayloadID, domain, key) )
CREATE TABLE Payloads( PayloadID TEXT NOT NULL, payload_family TEXT NOT NULL,payload_name TEXT NOT NULL, payload_version TEXT NOT NULL,payload_type TEXT NOT NULL,PRIMARY KEY (PayloadID) )
CREATE TABLE SuitePayloads( ProductID TEXT NOT NULL REFERENCES Suites (ProductID),PayloadID TEXT NOT NULL REFERENCES Payloads (PayloadID),PRIMARY KEY (ProductID, PayloadID) )
CREATE TABLE Suites( ProductID TEXT NOT NULL, group_name TEXT NOT NULL, group_family TEXT NOT NULL, display_name TEXT NOT NULL, PRIMARY KEY (ProductID) )
CREATE TABLE EULA_Ref( productID TEXT NOT NULL, langCode TEXT NOT NULL, eula_hash TEXT NOT NULL, PRIMARY KEY (productID, langCode) )
CREATE TABLE EULA_Content(eula_hash TEXT NOT NULL, Content TEXT NOT NULL, PRIMARY KEY (eula_hash))
CREATE TABLE IF NOT EXISTS pcd_meta ( key TEXT NOT NULL, value TEXT NOT NULL, PRIMARY KEY (key) )
INSERT OR REPLACE INTO pcd_meta (key, value) VALUES ('schema_version', 2)
INSERT OR REPLACE INTO pcd_meta (key, value) VALUES ('schema_compatibility_version', 1)
INSERT INTO DependencyData VALUES	("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "{C3503813-58DF-4D5B-89A6-4B43C3E2D639}", "upgrade", "", "", "")
INSERT INTO DependencyData VALUES	("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "{F3F92C54-A082-4B15-AA4A-F469EF9D12E7}", "upgrade", "", "", "")
INSERT INTO DependencyData VALUES	("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "{D87DC225-2B3C-4BBB-8984-1B0316485539}", "upgrade", "", "", "")
INSERT INTO DependencyData VALUES	("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "{C9C39179-E2C3-4DAC-A0F6-BACD07D46CCC}", "patch", "Photoshop", "Adobe Photoshop CS6 Swedish Language Pack_x64_AdobePhotoshop13-sv_SE_x64", "")
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0" , "ValidationInfo", '<ValidationInfo payloadID="{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}"/>')
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0" , "ValidationSig", "LEU0RV0mbp7Na9fh2WoSxEOaOL5nSbtrVX2KvtGtd7GJx1odoXS6Cip8m6afx87xFpyTECANgI8LzqDsKz74a9goeMu2zPWsO/+kieP3ZHANVTXoBvGK8h6VoPWLC1a3bi25+JMKc+vnTDIMcBKhwgzFY3GhYNuHDHAonPPD9uHhVdTa6j+veDd8tEivRTze7jG0zrzdWIDLIlFN/Dyr8mbzoSUwEm1tS9NBbKcuMYTaNEV+PjugOzNMnTwP6fLpt+I1cZBccJoN3G6oPtTSyRf2vuLqR/LGMD10ySZhuua7UWj832MPKoBDazmp1J3ExfH3UEf+Z/D/ptQ9kww6BUWqMhF73LH418AT/nG7AqdMUN0F5+FsCv+FyN+k0f602sWTr35dsCC0eZgvj0NC5BS/XVYYTMqTGH4yAq0dZAK2ewvkcShDvFVcuf8IqGQR0LUkC0ELzz3gc4mM5ksD/RzEr6PAhFBcQ8tvcNsJI8Sz99t8sYZM7LW9QYeLVniB")
INSERT INTO Payloads VALUES	("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "Photoshop", "Adobe Photoshop CS6 Swedish Language Pack_x64_13.0.1.3_AdobePhotoshop13-sv_SE_x64", "13.0.1.3", "patch")
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0" , "PayloadInfo", '<PayloadInfo version="6.0.98.0"><BuildInfo>
    <Property name="Created">2013-10-29 15:28:51.499000</Property>
    <Property name="TargetName">AdobePhotoshop13-sv_SE_x64-291013152851</Property>
    <Property name="ProcessorFamily">x64</Property>
  </BuildInfo><InstallerProperties>
    <Property name="payloadType">SQLite</Property>
    <Property name="AdobeCode">{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}</Property>
    <Property name="ProductName">Adobe Photoshop CS6 Swedish Language Pack_x64</Property>
    <Property name="ProductVersion">13.0.1.3</Property>
  </InstallerProperties><InstallDir>
    <Platform isFixed="0" name="Default" folderName="">[AdobeProgramFiles]</Platform>
  </InstallDir><Languages languageIndependent="1"/><Satisfies>
    <ProductInfo>
      <Family>Photoshop</Family>
      <ProductName>Adobe Photoshop CS6 Swedish Language Pack_x64_13.0.1.3_AdobePhotoshop13-sv_SE_x64</ProductName>
      <ProductVersion>13.0.1.3</ProductVersion>
    </ProductInfo>
  </Satisfies><Upgrades>
    <AdobeCode>{C3503813-58DF-4D5B-89A6-4B43C3E2D639}</AdobeCode>
    <AdobeCode>{F3F92C54-A082-4B15-AA4A-F469EF9D12E7}</AdobeCode>
    <AdobeCode>{D87DC225-2B3C-4BBB-8984-1B0316485539}</AdobeCode>
  </Upgrades><Channel enable="1" id="AdobePhotoshopCS6SwedishLanguagePack_x64-13.0">
        <DisplayName>Adobe Photoshop CS6 Swedish Language Pack_x64</DisplayName>
      </Channel><Update id="13.0.1.3">
        
        
      &lt;DisplayName default="en_US"&gt;
		&lt;en_US&gt;Adobe Photoshop 13.0.1.3&lt;/en_US&gt;	
		&lt;cs_CZ&gt;Adobe Photoshop 13.0.1.3&lt;/cs_CZ&gt;
		&lt;da_DK&gt;Adobe Photoshop 13.0.1.3&lt;/da_DK&gt;
		&lt;de_DE&gt;Adobe Photoshop 13.0.1.3&lt;/de_DE&gt;
		&lt;es_ES&gt;Adobe Photoshop 13.0.1.3&lt;/es_ES&gt;
		&lt;fi_FI&gt;Adobe Photoshop 13.0.1.3&lt;/fi_FI&gt;
		&lt;fr_FR&gt;Adobe Photoshop 13.0.1.3&lt;/fr_FR&gt;
		&lt;hu_HU&gt;Adobe Photoshop 13.0.1.3&lt;/hu_HU&gt;
		&lt;it_IT&gt;Adobe Photoshop 13.0.1.3&lt;/it_IT&gt;
		&lt;ja_JP&gt;Adobe Photoshop 13.0.1.3&lt;/ja_JP&gt;
		&lt;ko_KR&gt;Adobe Photoshop 13.0.1.3&lt;/ko_KR&gt;
		&lt;nb_NO&gt;Adobe Photoshop 13.0.1.3&lt;/nb_NO&gt;
		&lt;nl_NL&gt;Adobe Photoshop 13.0.1.3&lt;/nl_NL&gt;
		&lt;pl_PL&gt;Adobe Photoshop 13.0.1.3&lt;/pl_PL&gt;
		&lt;pt_BR&gt;Adobe Photoshop 13.0.1.3&lt;/pt_BR&gt;
		&lt;ru_RU&gt;Adobe Photoshop 13.0.1.3&lt;/ru_RU&gt;
		&lt;sv_SE&gt;Adobe Photoshop 13.0.1.3&lt;/sv_SE&gt;
		&lt;tr_TR&gt;Adobe Photoshop 13.0.1.3&lt;/tr_TR&gt;
		&lt;uk_UA&gt;Adobe Photoshop 13.0.1.3&lt;/uk_UA&gt;
		&lt;zh_CN&gt;Adobe Photoshop 13.0.1.3&lt;/zh_CN&gt;
		&lt;zh_TW&gt;Adobe Photoshop 13.0.1.3&lt;/zh_TW&gt;
	&lt;/DisplayName&gt;&lt;Description default="en_US"&gt;
		&lt;en_US&gt;The Adobe(R) Photoshop(R) CS6 13.0.1.3 update addresses a number of issues discovered after Adobe Photoshop CS6 (13.0) software was released. For details, please see: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/en_US&gt;
		&lt;cs_CZ&gt;Aktualizace softwaru Adobe(R) Photoshop(R) CS6 13.0.1.3 řeší řadu potíží zjištěných po vydání verze Adobe Photoshop CS6 (13.0). Další informace najdete na webu http://www.adobe.com/go/photoshop_cs6_update_info&lt;/cs_CZ&gt;
		&lt;da_DK&gt;Opdateringen til Adopbe(R) Photoshop(R) CS6 13.0.1.3 løser en række problemer, der blev registreret, efter at Adobe Photoshop CS6 (13.0)-softwaren blev udgivet. Du kan finde flere oplysninger her: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/da_DK&gt;
		&lt;de_DE&gt;Mit der Adobe(R) Photoshop(R) CS6 13.0.1.3-Aktualisierung werden mehrere Probleme behoben, die nach der Veröffentlichung von Adobe Photoshop CS6 (13.0) aufgetreten sind. Weitere Hinweise finden Sie unter http://www.adobe.com/go/photoshop_cs6_update_info.&lt;/de_DE&gt;
		&lt;es_ES&gt;La actualización Adobe(R) Photoshop(R) CS6 13.0.1.3 soluciona diversos problemas observados tras la publicación del software Adobe Photoshop CS6 (13.0). Para conocer más detalles, visite: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/es_ES&gt;
		&lt;fi_FI&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 -päivitys korjaa useita Adobe Photoshop CS6 (13.0) -ohjelmistosta löytyneitä ongelmia. Saat lisätietoja osoitteesta http://www.adobe.com/go/photoshop_cs6_update_info.&lt;/fi_FI&gt;
		&lt;fr_FR&gt;La mise à jour Adobe(R) Photoshop(R) CS6 13.0.1.3 corrige un certain nombre de problèmes détectés dans Adobe Photoshop CS6 (13.0) après sa sortie. Pour en savoir plus, reportez-vous à la page : http://www.adobe.com/go/photoshop_cs6_update_info&lt;/fr_FR&gt;
		&lt;hu_HU&gt;Az Adobe(R) Photoshop(R) CS6 13.0.1.3 frissítés az Adobe Photoshop CS6 (13.0) szoftver számos, a kibocsátást követően felfedezett hibáját javítja. További részletek: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/hu_HU&gt;
		&lt;it_IT&gt;L’aggiornamento di Adobe(R) Photoshop(R) CS6 13.0.1.3 fa’ riferimento a un numero di problemi rilevati dopo il rilascio del software Adobe Photoshop CS6 (13.0). Per ulteriori dettagli, visitare: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/it_IT&gt;
		&lt;ja_JP&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 のアップデートは Adobe Photoshop CS6 (13.0) ソフトウェアのリリース以降発見されたさまざまな問題を解決します。詳細についてはこちらをご覧ください: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/ja_JP&gt;
		&lt;ko_KR&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 업데이트는 Adobe Photoshop CS6 (13.0) 소프트웨어가 릴리즈된 후 발견된 여러 문제들을 다루었습니다. 자세한 내용을 원하시면 다음 웹페이지를 참조해 주십시오: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/ko_KR&gt;
		&lt;nb_NO&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3-oppdateringen løser flere problemer som ble oppdaget etter at Adobe Photoshop CS6 (13.0) ble utgitt. For mer informasjon gå til: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/nb_NO&gt;
		&lt;nl_NL&gt;In de Adobe(R) Photoshop(R) CS6 13.0.1.3-update wordt een aantal problemen opgelost die zijn ontdekt na de release van Adobe Photoshop CS6 (13.0)-software. Raadpleeg voor meer informatie: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/nl_NL&gt;
		&lt;pl_PL&gt;Aktualizacja programu Adobe(R) Photoshop(R) CS6 13.0.1.3 usuwa szereg problemów wykrytych po wprowadzeniu programu Adobe Photoshop CS6 w wersji 13.0. Szczegółowe informacje na ten temat są dostępne pod adresem: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/pl_PL&gt;
		&lt;pt_BR&gt;A atualização do Adobe(R) Photoshop(R) CS6 13.0.1.3 soluciona vários problemas observados após a publicação do Adobe Photoshop CS6 (13.0).  Para maiores detalhes, visite: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/pt_BR&gt;
		&lt;ru_RU&gt;В обновлении Adobe(R) Photoshop(R) CS6 13.0.1.3 исправлен ряд проблем, обнаруженных после выпуска Adobe Photoshop CS6 (13.0). Дополнительные сведения см. на странице http://www.adobe.com/go/photoshop_cs6_update_info&lt;/ru_RU&gt;
		&lt;sv_SE&gt;Uppdateringen Adobe(R) Photoshop(R) CS6 13.0.1.3 åtgärdar en rad problem som upptäcktes efter att Adobe Photoshop CS6 (13.0) hade lanserats. Mer information finns på sidan: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/sv_SE&gt;
		&lt;tr_TR&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 güncellemesinde, Adobe Photoshop CS6 (13.0) yazılımı kullanıma sunulduktan sonra bulunan çeşitli sorunlar ele alınır. Ayrıntılar için bkz. http://www.adobe.com/go/photoshop_cs6_update_info&lt;/tr_TR&gt;
		&lt;uk_UA&gt;Оновлення Adobe(R) Photoshop(R) CS6 13.0.1.3 усуває декілька проблем, які були виявлені після виходу графічного редактора Adobe Photoshop CS6 (13.0). Докладніші відомості містяться на сторінці http://www.adobe.com/go/photoshop_cs6_update_info&lt;/uk_UA&gt;
		&lt;zh_CN&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 更新版解决了 Adobe Photoshop CS6 (13.0) 软件发布后发现的诸多问题。有关详细信息，请参见：http://www.adobe.com/go/photoshop_cs6_update_info&lt;/zh_CN&gt;
		&lt;zh_TW&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 更新解決了自 Adobe Photoshop CS6 (13.0) 軟體發佈以來發現的各種問題。有關詳細資料，請造訪：http://www.adobe.com/go/photoshop_cs6_update_info&lt;/zh_TW&gt;
	&lt;/Description&gt;</Update><Extends type="patch">
    <ParentProductInfo>
      <Family>Photoshop</Family>
      <ProductName>Adobe Photoshop CS6 Swedish Language Pack_x64_AdobePhotoshop13-sv_SE_x64</ProductName>
      <AdobeCode>{C9C39179-E2C3-4DAC-A0F6-BACD07D46CCC}</AdobeCode>
    </ParentProductInfo>
  </Extends><InstallDestinationMetadata relocatableSize="7434094" sysDriveSize="0"><Destination>
      <Root>[INSTALLDIR]</Root>
      <TotalSize>7434094</TotalSize>
      <MaxPathComponent>/Adobe/AdobePatchFiles/{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}\eb0039a1f7faa9546dd47458739f74b1.rtp</MaxPathComponent>
    </Destination>
    <Assets>
      <Asset flag="1" name="Assets1_1" size="7434094"/>
    </Assets>
  </InstallDestinationMetadata><ConflictingProcesses>
    <Win32/>
  </ConflictingProcesses><AddRemoveInfo>
    <DisplayVersion>
      <Value lang="ar_AE">13.0.1.3</Value>
      <Value lang="be_BY">13.0.1.3</Value>
      <Value lang="bg_BG">13.0.1.3</Value>
      <Value lang="ca_ES">13.0.1.3</Value>
      <Value lang="cs_CZ">13.0.1.3</Value>
      <Value lang="da_DK">13.0.1.3</Value>
      <Value lang="de_DE">13.0.1.3</Value>
      <Value lang="el_GR">13.0.1.3</Value>
      <Value lang="en_GB">13.0.1.3</Value>
      <Value lang="en_MX">13.0.1.3</Value>
      <Value lang="en_US">13.0.1.3</Value>
      <Value lang="en_XC">13.0.1.3</Value>
      <Value lang="en_XM">13.0.1.3</Value>
      <Value lang="es_ES">13.0.1.3</Value>
      <Value lang="es_MX">13.0.1.3</Value>
      <Value lang="es_QM">13.0.1.3</Value>
      <Value lang="et_EE">13.0.1.3</Value>
      <Value lang="fi_FI">13.0.1.3</Value>
      <Value lang="fr_CA">13.0.1.3</Value>
      <Value lang="fr_FR">13.0.1.3</Value>
      <Value lang="fr_MX">13.0.1.3</Value>
      <Value lang="fr_XM">13.0.1.3</Value>
      <Value lang="he_IL">13.0.1.3</Value>
      <Value lang="hi_IN">13.0.1.3</Value>
      <Value lang="hr_HR">13.0.1.3</Value>
      <Value lang="hu_HU">13.0.1.3</Value>
      <Value lang="is_IS">13.0.1.3</Value>
      <Value lang="it_IT">13.0.1.3</Value>
      <Value lang="ja_JP">13.0.1.3</Value>
      <Value lang="ko_KR">13.0.1.3</Value>
      <Value lang="lt_LT">13.0.1.3</Value>
      <Value lang="lv_LV">13.0.1.3</Value>
      <Value lang="mk_MK">13.0.1.3</Value>
      <Value lang="nb_NO">13.0.1.3</Value>
      <Value lang="nl_NL">13.0.1.3</Value>
      <Value lang="nn_NO">13.0.1.3</Value>
      <Value lang="no_NO">13.0.1.3</Value>
      <Value lang="pl_PL">13.0.1.3</Value>
      <Value lang="pt_BR">13.0.1.3</Value>
      <Value lang="ro_RO">13.0.1.3</Value>
      <Value lang="ru_RU">13.0.1.3</Value>
      <Value lang="sh_YU">13.0.1.3</Value>
      <Value lang="sk_SK">13.0.1.3</Value>
      <Value lang="sl_SI">13.0.1.3</Value>
      <Value lang="sq_AL">13.0.1.3</Value>
      <Value lang="sv_SE">13.0.1.3</Value>
      <Value lang="th_TH">13.0.1.3</Value>
      <Value lang="tr_TR">13.0.1.3</Value>
      <Value lang="uk_UA">13.0.1.3</Value>
      <Value lang="vi_VN">13.0.1.3</Value>
      <Value lang="zh_CN">13.0.1.3</Value>
      <Value lang="zh_TW">13.0.1.3</Value>
      <Value lang="en_AE">13.0.1.3</Value>
      <Value lang="en_IL">13.0.1.3</Value>
      <Value lang="fr_MA">13.0.1.3</Value>
    </DisplayVersion>
    <DisplayName>
      <Value lang="ar_AE">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="be_BY">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="bg_BG">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="ca_ES">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="cs_CZ">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="da_DK">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="de_DE">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="el_GR">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="en_GB">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="en_MX">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="en_US">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="en_XC">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="en_XM">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="es_ES">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="es_MX">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="es_QM">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="et_EE">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="fi_FI">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="fr_CA">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="fr_FR">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="fr_MX">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="fr_XM">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="he_IL">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="hi_IN">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="hr_HR">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="hu_HU">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="is_IS">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="it_IT">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="ja_JP">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="ko_KR">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="lt_LT">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="lv_LV">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="mk_MK">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="nb_NO">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="nl_NL">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="nn_NO">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="no_NO">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="pl_PL">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="pt_BR">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="ro_RO">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="ru_RU">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="sh_YU">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="sk_SK">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="sl_SI">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="sq_AL">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="sv_SE">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="th_TH">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="tr_TR">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="uk_UA">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="vi_VN">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="zh_CN">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="zh_TW">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="en_AE">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="en_IL">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
      <Value lang="fr_MA">Adobe Photoshop CS6 Swedish Language Pack_x64</Value>
    </DisplayName>
  </AddRemoveInfo><UserPreferences>0</UserPreferences></PayloadInfo>')
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0" , "WorkflowVersion", "CS6")
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0" , "DEVersion", "6.0")
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0", "ChannelID", "AdobePhotoshopCS6SwedishLanguagePack_x64-13.0")
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0", "ChannelInfo", '<Channel enable="1" id="AdobePhotoshopCS6SwedishLanguagePack_x64-13.0">
        <DisplayName>Adobe Photoshop CS6 Swedish Language Pack_x64</DisplayName>
      </Channel>')
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0", "UpdateID", "13.0.1.3")
INSERT INTO PayloadData VALUES("{FC6ED81E-C6E1-41F1-87D2-03B7B91710E4}", "0", "UpdateInfo", '<Update id="13.0.1.3">
        
        
      &lt;DisplayName default="en_US"&gt;
		&lt;en_US&gt;Adobe Photoshop 13.0.1.3&lt;/en_US&gt;	
		&lt;cs_CZ&gt;Adobe Photoshop 13.0.1.3&lt;/cs_CZ&gt;
		&lt;da_DK&gt;Adobe Photoshop 13.0.1.3&lt;/da_DK&gt;
		&lt;de_DE&gt;Adobe Photoshop 13.0.1.3&lt;/de_DE&gt;
		&lt;es_ES&gt;Adobe Photoshop 13.0.1.3&lt;/es_ES&gt;
		&lt;fi_FI&gt;Adobe Photoshop 13.0.1.3&lt;/fi_FI&gt;
		&lt;fr_FR&gt;Adobe Photoshop 13.0.1.3&lt;/fr_FR&gt;
		&lt;hu_HU&gt;Adobe Photoshop 13.0.1.3&lt;/hu_HU&gt;
		&lt;it_IT&gt;Adobe Photoshop 13.0.1.3&lt;/it_IT&gt;
		&lt;ja_JP&gt;Adobe Photoshop 13.0.1.3&lt;/ja_JP&gt;
		&lt;ko_KR&gt;Adobe Photoshop 13.0.1.3&lt;/ko_KR&gt;
		&lt;nb_NO&gt;Adobe Photoshop 13.0.1.3&lt;/nb_NO&gt;
		&lt;nl_NL&gt;Adobe Photoshop 13.0.1.3&lt;/nl_NL&gt;
		&lt;pl_PL&gt;Adobe Photoshop 13.0.1.3&lt;/pl_PL&gt;
		&lt;pt_BR&gt;Adobe Photoshop 13.0.1.3&lt;/pt_BR&gt;
		&lt;ru_RU&gt;Adobe Photoshop 13.0.1.3&lt;/ru_RU&gt;
		&lt;sv_SE&gt;Adobe Photoshop 13.0.1.3&lt;/sv_SE&gt;
		&lt;tr_TR&gt;Adobe Photoshop 13.0.1.3&lt;/tr_TR&gt;
		&lt;uk_UA&gt;Adobe Photoshop 13.0.1.3&lt;/uk_UA&gt;
		&lt;zh_CN&gt;Adobe Photoshop 13.0.1.3&lt;/zh_CN&gt;
		&lt;zh_TW&gt;Adobe Photoshop 13.0.1.3&lt;/zh_TW&gt;
	&lt;/DisplayName&gt;&lt;Description default="en_US"&gt;
		&lt;en_US&gt;The Adobe(R) Photoshop(R) CS6 13.0.1.3 update addresses a number of issues discovered after Adobe Photoshop CS6 (13.0) software was released. For details, please see: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/en_US&gt;
		&lt;cs_CZ&gt;Aktualizace softwaru Adobe(R) Photoshop(R) CS6 13.0.1.3 řeší řadu potíží zjištěných po vydání verze Adobe Photoshop CS6 (13.0). Další informace najdete na webu http://www.adobe.com/go/photoshop_cs6_update_info&lt;/cs_CZ&gt;
		&lt;da_DK&gt;Opdateringen til Adopbe(R) Photoshop(R) CS6 13.0.1.3 løser en række problemer, der blev registreret, efter at Adobe Photoshop CS6 (13.0)-softwaren blev udgivet. Du kan finde flere oplysninger her: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/da_DK&gt;
		&lt;de_DE&gt;Mit der Adobe(R) Photoshop(R) CS6 13.0.1.3-Aktualisierung werden mehrere Probleme behoben, die nach der Veröffentlichung von Adobe Photoshop CS6 (13.0) aufgetreten sind. Weitere Hinweise finden Sie unter http://www.adobe.com/go/photoshop_cs6_update_info.&lt;/de_DE&gt;
		&lt;es_ES&gt;La actualización Adobe(R) Photoshop(R) CS6 13.0.1.3 soluciona diversos problemas observados tras la publicación del software Adobe Photoshop CS6 (13.0). Para conocer más detalles, visite: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/es_ES&gt;
		&lt;fi_FI&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 -päivitys korjaa useita Adobe Photoshop CS6 (13.0) -ohjelmistosta löytyneitä ongelmia. Saat lisätietoja osoitteesta http://www.adobe.com/go/photoshop_cs6_update_info.&lt;/fi_FI&gt;
		&lt;fr_FR&gt;La mise à jour Adobe(R) Photoshop(R) CS6 13.0.1.3 corrige un certain nombre de problèmes détectés dans Adobe Photoshop CS6 (13.0) après sa sortie. Pour en savoir plus, reportez-vous à la page : http://www.adobe.com/go/photoshop_cs6_update_info&lt;/fr_FR&gt;
		&lt;hu_HU&gt;Az Adobe(R) Photoshop(R) CS6 13.0.1.3 frissítés az Adobe Photoshop CS6 (13.0) szoftver számos, a kibocsátást követően felfedezett hibáját javítja. További részletek: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/hu_HU&gt;
		&lt;it_IT&gt;L’aggiornamento di Adobe(R) Photoshop(R) CS6 13.0.1.3 fa’ riferimento a un numero di problemi rilevati dopo il rilascio del software Adobe Photoshop CS6 (13.0). Per ulteriori dettagli, visitare: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/it_IT&gt;
		&lt;ja_JP&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 のアップデートは Adobe Photoshop CS6 (13.0) ソフトウェアのリリース以降発見されたさまざまな問題を解決します。詳細についてはこちらをご覧ください: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/ja_JP&gt;
		&lt;ko_KR&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 업데이트는 Adobe Photoshop CS6 (13.0) 소프트웨어가 릴리즈된 후 발견된 여러 문제들을 다루었습니다. 자세한 내용을 원하시면 다음 웹페이지를 참조해 주십시오: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/ko_KR&gt;
		&lt;nb_NO&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3-oppdateringen løser flere problemer som ble oppdaget etter at Adobe Photoshop CS6 (13.0) ble utgitt. For mer informasjon gå til: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/nb_NO&gt;
		&lt;nl_NL&gt;In de Adobe(R) Photoshop(R) CS6 13.0.1.3-update wordt een aantal problemen opgelost die zijn ontdekt na de release van Adobe Photoshop CS6 (13.0)-software. Raadpleeg voor meer informatie: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/nl_NL&gt;
		&lt;pl_PL&gt;Aktualizacja programu Adobe(R) Photoshop(R) CS6 13.0.1.3 usuwa szereg problemów wykrytych po wprowadzeniu programu Adobe Photoshop CS6 w wersji 13.0. Szczegółowe informacje na ten temat są dostępne pod adresem: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/pl_PL&gt;
		&lt;pt_BR&gt;A atualização do Adobe(R) Photoshop(R) CS6 13.0.1.3 soluciona vários problemas observados após a publicação do Adobe Photoshop CS6 (13.0).  Para maiores detalhes, visite: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/pt_BR&gt;
		&lt;ru_RU&gt;В обновлении Adobe(R) Photoshop(R) CS6 13.0.1.3 исправлен ряд проблем, обнаруженных после выпуска Adobe Photoshop CS6 (13.0). Дополнительные сведения см. на странице http://www.adobe.com/go/photoshop_cs6_update_info&lt;/ru_RU&gt;
		&lt;sv_SE&gt;Uppdateringen Adobe(R) Photoshop(R) CS6 13.0.1.3 åtgärdar en rad problem som upptäcktes efter att Adobe Photoshop CS6 (13.0) hade lanserats. Mer information finns på sidan: http://www.adobe.com/go/photoshop_cs6_update_info&lt;/sv_SE&gt;
		&lt;tr_TR&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 güncellemesinde, Adobe Photoshop CS6 (13.0) yazılımı kullanıma sunulduktan sonra bulunan çeşitli sorunlar ele alınır. Ayrıntılar için bkz. http://www.adobe.com/go/photoshop_cs6_update_info&lt;/tr_TR&gt;
		&lt;uk_UA&gt;Оновлення Adobe(R) Photoshop(R) CS6 13.0.1.3 усуває декілька проблем, які були виявлені після виходу графічного редактора Adobe Photoshop CS6 (13.0). Докладніші відомості містяться на сторінці http://www.adobe.com/go/photoshop_cs6_update_info&lt;/uk_UA&gt;
		&lt;zh_CN&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 更新版解决了 Adobe Photoshop CS6 (13.0) 软件发布后发现的诸多问题。有关详细信息，请参见：http://www.adobe.com/go/photoshop_cs6_update_info&lt;/zh_CN&gt;
		&lt;zh_TW&gt;Adobe(R) Photoshop(R) CS6 13.0.1.3 更新解決了自 Adobe Photoshop CS6 (13.0) 軟體發佈以來發現的各種問題。有關詳細資料，請造訪：http://www.adobe.com/go/photoshop_cs6_update_info&lt;/zh_TW&gt;
	&lt;/Description&gt;</Update>')
