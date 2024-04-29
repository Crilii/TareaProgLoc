% Hechos que definen las relaciones entre hierbas medicinales, afecciones y remedios
hierba_medicinal(abrojo, [afecciones_del_pecho, higado, circulacion]).
hierba_medicinal(acacia, [dolor_de_garganta, tos, bronquitis]).
hierba_medicinal(acanto, [antivenenoso, emoliente]).
hierba_medicinal(aceitilla, [cansancio_intelectual, depresion_nerviosa]).
hierba_medicinal(achicoria, [diuretico, depurativo]).

% Hechos que definen las relaciones entre hierbas medicinales, afecciones y cura%
hierba_medicinal(abrojo, [afecciones_del_pecho, higado, circulacion,inflacion_del_ojo]).
hierba_medicinal(acacia, [dolor_de_garganta, tos, bronquitis]).
hierba_medicinal(acanto, [antivenenoso, emoliente]).
hierba_medicinal(aceitilla, [cansancio_intelectual, depresion_nerviosa]).
hierba_medicinal(achicoria, [diuretico, depurativo]).

%como ingerir
metodo_ingerir(abrojo, usar_la_raiz_en_agua_como_agua_uso).
metodo_ingerir(acacia, [tomar_te_de_sus_hojas, hojas_acanto_aplicadas]).
metodo_ingerir(acanto, [hojas_de_acanto_aplicadas_en_piel,te_de_sus_hojas]).
metodo_ingerir(aceitilla, tonico).
metodo_ingerir(achicoria, tomar_te_hojas_secas).
metodo_ingerir(sanguinaria, tomar_te_15_dias).
metodo_ingerir(sensitiva, cocer_hojas_raiz_tomar_te).
metodo_ingerir(simonillo, usar_planta_en_te).
metodo_ingerir(tamarindo, esta_propiedad_es_en_natural).
metodo_ingerir(tabachin, usar_planta_flores_en_te).
metodo_ingerir(taray, dejar_reposar_en_agua_su_madera_la_noche_hasta_agua_amarilla_tomar_en_vaso).
metodo_ingerir(tila, tomar_en_te_puede_mezclarse_azahar).
metodo_ingerir(milpa, tomar_en_te).

%datos extra
dato_extra(abrojo, crece_en_zonas_pedregosas).
dato_extra(acacia, se_puede_sacar_goma_del_arbol).
dato_extra(sensitiva, no_usar_en_niñas).
dato_extra(aceitilla, [abunda_en_sembradios,florece_en_los_meses_agosto]).
dato_extra(achicoria, se_puede_hacer_como_cafe).
dato_extra(tabachin, fuerte_abortivo_no_embarazadas).
dato_extra(tila, originario_de_europa).
dato_extra(milpa, forrajera_muy_comun_en_mexico).

%como preparar
preparacion(cocimiento, hervir_40min_reposar5min).
preparacion(infusion, vertir_agua_hierviendo_planta_en_taza).
preparacion(maceracion, moler_y_agregar_agua_hasta_sustancias).
preparacion(jarabe, hervir_planta_en_agua10min_agregar_azucar_caramelizar_reposar10min).
preparacion(tintura, el_alcohol_saca_nutrientes).
preparacion(jugo, exprimir_plantas_usando_trapo).
preparacion(horchata, moler_agregar_agua_poco_a_poco_hasta_masita).
preparacion(reposo, dejar_reposar_la_noche).


% informacion completa de la hierba
hierba_info(Hierba, Propiedades, Metodo, Dato) :-
    hierba_medicinal(Hierba, Propiedades),
    metodo_ingerir(Hierba, Metodo),
    dato_extra(Hierba, Dato).

% Relación entre planta y método de preparación
hierba_preparacion(abrojo, cocimiento).
hierba_preparacion(acanto, [cocimiento, horchata]).
hierba_preparacion(aceitilla, jugo).
hierba_preparacion(achicoria, cocimiento).
hierba_preparacion(sanguinaria, cocimiento).
hierba_preparacion(sensitiva, cocimiento).
hierba_preparacion(simonillo, cocimiento).
hierba_preparacion(tamarindo, jugo).
hierba_preparacion(tabachin, infusion).
hierba_preparacion(taray, reposo).
hierba_preparacion(tila, infusion).
hierba_preparacion(milpa, infusion).

% Regla para consultar el método de preparación
metodo_preparar(Planta, Metodo) :-
    hierba_preparacion(Planta, Metodo).

% Ejemplo de uso:
% metodo_preparacion(abrojo, Metodo).


remedio(abceso, malva).
remedio(abceso_hepatico, zarzaparrilla).
remedio(acidez_estomacal, [anis, perejil]).
remedio(acido_urico, [sanguinaria, limon, sauco]).
remedio(acne, arnica).
remedio(aftas, [llanten, fenogreco, zarzamora]).
remedio(agotamiento, [salvia, tilo, valeriana]).
remedio(agruras, [yerbabuena, manzanilla, jugo_de_limon, toronja]).
remedio(albuminaria, [pinguica, quina_roja, encino_rojo]).
remedio(alcoholismo, pimiento).
remedio(almorranas, [salvia, sauco, cola_de_caballo, sanguinaria]).
remedio(anemia, [ajenjo, quina, canela, germen_de_trigo]).
remedio(anginas, [eucalipto, cebada, salvia, borraja]).
remedio(anorexia, [ajenjo, gerciana, yerbabuena]).
remedio(arterosclerosis, [limon, genciana, cardo, zarzaparrilla]).
remedio(artritis, [arnica, chicalote, toronja, alcanfor]).
remedio(asma, [eucalipto, marrubo, oregano, salvia]).
remedio(antonia_estomacal, [lupulo, eucalipto, cuasia]).
remedio(bazo, [uva, cerezo]).
remedio(boca, [malva, rosal, limon, salvia]).
remedio(bronquitis, [eucalipto, borraja, gordolobo, tilo, rabano]).
remedio(caida_cabello, [ortiga, espinosilla, marrubio, romero]).
remedio(bronconeumonia, [gordolobo, eucalipto, ipecaciana, mostaza]).
remedio(caries, [hiedra, cola_de_caballo]).
remedio(caspa, [ortiga, limon, romero]).
remedio(cancer_utero, [cuachalalate, llanten, siempreviva]).
remedio(ciatica, [mastuerzo, higuera, sauco]).
remedio(cicatrizar_heridas, milpa).
remedio(circulacion, [toronjil, sanguinaria, salvia, hamamelis]).
remedio(cistitis, [cola_de_caballo, doradillas, ajo, cabellos_de_elote]).
remedio(colicos, [menta, hinojo, manzanilla, toronjil, boldo]).
remedio(colitis, [linaza, anis, romero, cola_de_caballo]).
remedio(contusiones, [arnica, hamamelis, laurel, brionia]).
remedio(corazon, [digital, salvia, nuez_de_klca, tejocote]).
remedio(depurtivos_sangre, [achicoria, diente_de_leon, apio, sanguinaria, berro, zarzaparrilla]).
remedio(diabetes, [matarique, tronadora, eucalipto, domiana]).
remedio(diarrea, [caoulia, linaza, guayaba, manzanilla, mezquiteo, membrillo, alpahaca]).
remedio(diarrea_sangre, [chaparro_amargoso, muicle, manacillo]).
remedio(difteria,[limon, naranaja]).
remedio(disenteria,[tamarindo, chaparro_amargoso, ipecacuama,cedron]).
remedio(dispepsia,[anis, menta, yerbabuena, diente, genciana, te_limon, quina, ruibardo]).
remedio(dispepsia, [anis_estrella, valeriana,manzanilla]).
remedio(dolores_musculares, alcanfor).
remedio(empacho, tamarindo).
remedio(enteritis, [linaza, cedron, llanten]).
remedio(epilepsia, valeriana).
remedio(hemorragia_nasal, [hierba_el_ollo, cebolla, perejil]).
remedio(erisipela, [saucp, hiedra, zanahoria]).
remedio(escarlantina, [borraja, sauco, cebolla]).
remedio(escorbuto, [ajo, limon, berro, cebolla, geranio]).
remedio(estreñimiento, [ciruela, linaza, chia, tamarindo, agar-agar]).
remedio(fiebre, tila).
remedio(faringitis, [eucalipto,lavanda, anacahuite]).
remedio(flatulencia, [apio, tomillo, perejil, anis_strella, hinojo, toronjil, romero, ruibarbo, ruda, menta]).
remedio(feblitis, [armica, alfalfa, lino, malvavisco, romero, quina]).
remedio(flemas,[genciana, oregano]).
remedio(forunculos,[fenogreco, malvavisco, hiedra]).
remedio(dolor_estomago,[manzanilla, anis_strella]).
remedio(gonorrea,[cola_de_caballo, doradilla,zarzaparrilla]).
remedio(grietas_ano, encina).
remedio(grietas_pezon, [encina, nogal, milerana]).
remedio(gripe, [eucalipto, limon, quina, zarzaparrilla, calandula]).
remedio(mal_aliento, [hinejo, menta]).
remedio(hemorragia_interna, [mastuerzo,ortiga, rosal]).
remedio(hemorroides, milpa).
remedio(hepatitis, [relama, boldo, alcachofa, prodigiosa, cascara_sagrada]).
remedio(hernia, [helecho, ricino, tabaco]).
remedio(herpes, [linza, llanten]).
remedio(heridos, [arnica, hamemelis]).
remedio(hidropesia, [alcachofa,cardo,perejil,sauco,berros,retama]).
remedio(higado_congestion, [marrubio, bolda, doradilla, ruibarbo, tabachin, milpa]).
remedio(higado_colitos, manzanilla, tabachin).
remedio(higado_bilis, [lechuga, tila, tabachin]).
remedio(higado_ictericia, [papaloquelite, achicoria, berros, llanten, tabachin]).
remedio(hipertencion_alta, [ajo, esparrago, alpiste, muerdago]).
remedio(hipertencion_baja, [miel, nuez_de_kola, crategus, acedera]).
remedio(hipo, [anis, hinojo, tila, valeriana]).
remedio(histerismo, [azahar, beleño, gelsemio, tila, valeriana]).
remedio(insomnio, [pasiflora, azahar, menta, manzanilla, lechuga, tila]).
remedio(intestino, [genciana, melisa]).
remedio(impotencia_sexual, [yohimbo, danviana, nuez_vomica, aguacate]).
remedio(jaqueca, [manzanilla, acanto, valeriana, tila, chicalote]).
remedio(lactancia, [hinojo, anis, menta, perejil, zanahoria, tila]).
remedio(laringitis, [aconito, borraja, cebolla, cebolla, rosa, benjui, encino]).
remedio(leucorrea, [encina, zazaparilla, pino, enebro, genciana]).
remedio(lombrices, [ajenjo, ajo, cebolla, brionia, aguacate, papaya, epazote]).
remedio(lumbago, [avena, cebada, tomillo, verbena]).
remedio(llagas, [fenogreco, eucalipto, llante, sanginaria]).
remedio(malaria, [quina, girasol, eucalipto, cardo]).
remedio(menopausia, [azahar, hamamelis, tila, quina_roja]).
remedio(menstruacion_abudante, [azafran, hamamelis]).
remedio(menstruacion_dolorosa, [belladona, anis_estrella, tabachin]).
remedio(menstruacion_escasa, [ruda, ajenjo, manzanilla, tabachin]).
remedio(menstruacion_irregular, [apio, hisopo, quina_amarilla, sabina, artemisa, tabachin]).
remedio(hemorragia_vaginal, [hamamelis, zanpatle, perejil, cuerrecilo_centena]).
remedio(dolor_muelas,[clavo, hiedra]).
remedio(nariza_hemorragia,[ortiga, cola_de_caballo, ruda, eucalipto]).
remedio(nauseas,[anis, ajenjo, menta, salvia]).
remedio(nerviosismo, tila).
remedio(neuralgias,[mazanilla, menta, valeriana, bolde]).
remedio(neurastenia,[pasiflora, te_negro, mate, valeriana]).
remedio(nefritis,[linaza , grama_cebada, llanten, doradilla, esparrago, ruda]).
remedio(tos_espasmodica, tila).
remedio(afecciones_riñones, [tabachin, taray]).


%Plantas Cristobal
hierba_medicinal(tabachin,[facilita_menstruacion, purifica_higado_riñon]).
hierba_medicinal(taray, disuelve_calculos_y_arenillas_renales).
hierba_medicinal(tila,[cura_nervios, malestar_general, sueño_tranquilo, fiebres_infecciosas, tos_espasmodica]).
hierba_medicinal(milpa,[calma_hemorroides, descongestiona_higado, cicatriza_heridas_en_la_piel]).
