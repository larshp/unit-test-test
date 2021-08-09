CLASS ltcl_test DEFINITION FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS FINAL.

  PRIVATE SECTION.
    METHODS:
      adler32 FOR TESTING,
      method2 FOR TESTING.

ENDCLASS.


CLASS ltcl_test IMPLEMENTATION.

  METHOD adler32.

    DATA lv_adler TYPE zcl_abapgit_hash=>ty_adler32.

    lv_adler = zcl_abapgit_hash=>adler32( '1122334455667788' ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_adler
      exp = '08000265' ).

  ENDMETHOD.

  METHOD method2.

    ASSERT 1 = 1.

  ENDMETHOD.

ENDCLASS.