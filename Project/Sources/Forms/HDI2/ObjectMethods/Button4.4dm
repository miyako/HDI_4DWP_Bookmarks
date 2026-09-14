If (_Bookmarks#0)
	// delete bookmark
	WP DELETE BOOKMARK:C1419(vDoc; _Bookmarks{_Bookmarks})
	// refresh list
	WP GET BOOKMARKS:C1417(vDoc; _Bookmarks)
End if 
