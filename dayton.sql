SELECT		
	pc.country,	
	pc.code AS postal_code,	
	pc.can_ship_to,	
	pc.can_self_schedule,	
	pc.service_zone,	
	w.code AS warehouse_code	
FROM		
	postalcode pc	
LEFT JOIN		
	warehouse w ON pc.warehouse_id = w.pk	
LEFT JOIN		
	warehouse sw ON pc.service_warehouse_id = sw.pk	
WHERE		
	pc.country = 'US'	
		
	AND	
		pc.service_zone = 'sz_dayton'
	AND	
		w.partner_flag != 'peloton-fsl'
ORDER BY		
	pc.code ASC	
		
		
