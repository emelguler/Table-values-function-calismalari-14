USE [Okul]

--veritabanindaki isimleri ünvanlari(ogretmen,ogrenci) ile getiren fonksiyon:

ALTER FUNCTION [dbo].[FN$OkulTest]()
    RETURNS @contacts TABLE (
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        person_type VARCHAR(20)
    )
AS
BEGIN
    INSERT INTO @contacts(first_name,last_name,person_type)
    SELECT 
        Adi as first_name, 
        SoyAdi as last_name, 
        'Ogrenci' as person_type
    FROM
       dbo.Ogrenci

    INSERT INTO @contacts(first_name,last_name,person_type)
    SELECT 
        Adi as first_name, 
        SoyAdi as last_name, 
        'Ogretmen' as person_type
    FROM
        dbo.Ogretmen
    RETURN;
END;




--cagiralim:
select * from dbo.FN$OkulTest()