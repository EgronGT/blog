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
INSERT INTO DependencyData VALUES	("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "{27C3A063-4465-4643-9ABB-128B45B4407C}", "upgrade", "", "", "")
INSERT INTO DependencyData VALUES	("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "{723DDE91-BBA2-4CD4-AD9B-E20A534A7B39}", "upgrade", "", "", "")
INSERT INTO DependencyData VALUES	("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "{4F89EA90-2CBE-4003-B59D-941F2DE70503}", "upgrade", "", "", "")
INSERT INTO DependencyData VALUES	("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "{120BCBE5-44C2-420A-AFC5-EA7C1A10A15E}", "patch", "Photoshop", "Adobe Photoshop CS6 German Language Pack_x64_AdobePhotoshop13-de_DE_x64", "")
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0" , "ValidationInfo", '<ValidationInfo payloadID="{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}"/>')
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0" , "ValidationSig", "GBMuIWRUbtn82o453j3AhbtW3ELmx8ANCf+aXtovdXNdrBa0UD+/JYwhOePTH+QwrzYq6RbAEZO+pqyXdQBXnxKX4EVBVGqNOM2qqrPytzBQsAZ4vyA3lOAE0BHDMQm4+vx9EEzbo48gjr/SwoluM4BMeTvwHHRirPD+u0R0ngnm/b8d0/NE3f3AxdnSuxdTeMc0EFs5ZEyQSaIfwLtrQKtOwK2oXXcEf2On/fkWBQkBsvlzhUWGvKRtS+bvxbwm6Q81+pKO0rkEU3oa1VZnRUR+BUUp1esJl1lt/bsA34w78r7pFBD9ukuSKk5C8fsRzrjY4J+NtD4+BSL/E6pXVW4LC0J0p17H2JxNcbEr3X9MbU0EaBbQax8IHrWFLyPnbHU7jVZaAQBJW9ypfXbBkYTFMARF5oj8IaGYwE+JgtAmk2GHFU35mcDlKm7jjf8UXkoYaZ96SIQv06S3Z0WKr9idgwLF2HwUfU0+XQtcGc0Jnjt3kSxEOsHQAwLrOebR")
INSERT INTO Payloads VALUES	("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "Photoshop", "Adobe Photoshop CS6 German Language Pack_x64_13.0.1.3_AdobePhotoshop13-de_DE_x64", "13.0.1.3", "patch")
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0" , "PayloadInfo", '<PayloadInfo version="6.0.98.0"><BuildInfo>
    <Property name="Created">2013-10-29 15:01:09.516000</Property>
    <Property name="TargetName">AdobePhotoshop13-de_DE_x64-291013150109</Property>
    <Property name="ProcessorFamily">x64</Property>
  </BuildInfo><InstallerProperties>
    <Property name="payloadType">SQLite</Property>
    <Property name="AdobeCode">{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}</Property>
    <Property name="ProductName">Adobe Photoshop CS6 German Language Pack_x64</Property>
    <Property name="ProductVersion">13.0.1.3</Property>
  </InstallerProperties><InstallDir>
    <Platform isFixed="0" name="Default" folderName="">[AdobeProgramFiles]</Platform>
  </InstallDir><Languages languageIndependent="1"/><Satisfies>
    <ProductInfo>
      <Family>Photoshop</Family>
      <ProductName>Adobe Photoshop CS6 German Language Pack_x64_13.0.1.3_AdobePhotoshop13-de_DE_x64</ProductName>
      <ProductVersion>13.0.1.3</ProductVersion>
    </ProductInfo>
  </Satisfies><Upgrades>
    <AdobeCode>{27C3A063-4465-4643-9ABB-128B45B4407C}</AdobeCode>
    <AdobeCode>{723DDE91-BBA2-4CD4-AD9B-E20A534A7B39}</AdobeCode>
    <AdobeCode>{4F89EA90-2CBE-4003-B59D-941F2DE70503}</AdobeCode>
  </Upgrades><Channel enable="1" id="AdobePhotoshopCS6GermanLanguagePack_x64-13.0">
        <DisplayName>Adobe Photoshop CS6 German Language Pack_x64</DisplayName>
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
      <ProductName>Adobe Photoshop CS6 German Language Pack_x64_AdobePhotoshop13-de_DE_x64</ProductName>
      <AdobeCode>{120BCBE5-44C2-420A-AFC5-EA7C1A10A15E}</AdobeCode>
    </ParentProductInfo>
  </Extends><InstallDestinationMetadata relocatableSize="7789334" sysDriveSize="0"><Destination>
      <Root>[INSTALLDIR]</Root>
      <TotalSize>7789334</TotalSize>
      <MaxPathComponent>/Adobe/AdobePatchFiles/{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}\3ec80d319b4d8a6833d075d866b619dd.rtp</MaxPathComponent>
    </Destination>
    <Assets>
      <Asset flag="1" name="Assets1_1" size="7789334"/>
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
      <Value lang="ar_AE">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="be_BY">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="bg_BG">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="ca_ES">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="cs_CZ">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="da_DK">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="de_DE">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="el_GR">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="en_GB">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="en_MX">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="en_US">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="en_XC">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="en_XM">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="es_ES">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="es_MX">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="es_QM">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="et_EE">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="fi_FI">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="fr_CA">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="fr_FR">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="fr_MX">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="fr_XM">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="he_IL">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="hi_IN">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="hr_HR">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="hu_HU">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="is_IS">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="it_IT">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="ja_JP">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="ko_KR">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="lt_LT">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="lv_LV">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="mk_MK">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="nb_NO">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="nl_NL">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="nn_NO">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="no_NO">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="pl_PL">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="pt_BR">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="ro_RO">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="ru_RU">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="sh_YU">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="sk_SK">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="sl_SI">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="sq_AL">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="sv_SE">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="th_TH">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="tr_TR">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="uk_UA">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="vi_VN">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="zh_CN">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="zh_TW">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="en_AE">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="en_IL">Adobe Photoshop CS6 German Language Pack_x64</Value>
      <Value lang="fr_MA">Adobe Photoshop CS6 German Language Pack_x64</Value>
    </DisplayName>
  </AddRemoveInfo><UserPreferences>0</UserPreferences></PayloadInfo>')
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0" , "WorkflowVersion", "CS6")
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0" , "DEVersion", "6.0")
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0", "ChannelID", "AdobePhotoshopCS6GermanLanguagePack_x64-13.0")
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0", "ChannelInfo", '<Channel enable="1" id="AdobePhotoshopCS6GermanLanguagePack_x64-13.0">
        <DisplayName>Adobe Photoshop CS6 German Language Pack_x64</DisplayName>
      </Channel>')
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0", "UpdateID", "13.0.1.3")
INSERT INTO PayloadData VALUES("{9CEF0C65-AEDC-410D-A44A-2A769FBCC3F1}", "0", "UpdateInfo", '<Update id="13.0.1.3">
        
        
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
