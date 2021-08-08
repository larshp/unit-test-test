CLASS ltcl_test DEFINITION FOR TESTING RISK LEVEL HARMLESS DURATION SHORT FINAL.

  PRIVATE SECTION.
    METHODS initial FOR TESTING.
    METHODS equals FOR TESTING.
    METHODS equals_table FOR TESTING.
    METHODS differs FOR TESTING.
    METHODS cp1 FOR TESTING.
    METHODS cp2 FOR TESTING.
    METHODS char_eq_string FOR TESTING.

ENDCLASS.

CLASS ltcl_test IMPLEMENTATION.

  METHOD cp1.
    cl_abap_unit_assert=>assert_char_cp(
      act = 'foobar'
      exp = '*oo*' ).
  ENDMETHOD.

  METHOD cp2.
    cl_abap_unit_assert=>assert_char_cp(
      act = |hello\nfoobar\nmoo|
      exp = '*oo*' ).
  ENDMETHOD.

  METHOD initial.

    DATA foo TYPE string.
    cl_abap_unit_assert=>assert_initial( foo ).
    foo = 'abc'.
    cl_abap_unit_assert=>assert_not_initial( foo ).

  ENDMETHOD.

  METHOD equals.
    DATA bar TYPE i.
    cl_abap_unit_assert=>assert_equals( act = bar exp = bar ).
    bar = 2.
    cl_abap_unit_assert=>assert_equals( act = bar exp = bar ).

    cl_abap_unit_assert=>assert_equals( act = 2 exp = 2 ).
    cl_abap_unit_assert=>assert_equals( act = 'hello' exp = 'hello' ).
  ENDMETHOD.

  METHOD equals_table.

  ENDMETHOD.

  METHOD differs.
    cl_abap_unit_assert=>assert_differs( act = 1 exp = 2 ).
  ENDMETHOD.

  METHOD char_eq_string.
    DATA lv_char TYPE c LENGTH 10.
    DATA lv_string TYPE string.
    lv_char = 'hello'.
    lv_string = 'hello'.
    cl_abap_unit_assert=>assert_equals( act = lv_char exp = lv_string ).
  ENDMETHOD.

ENDCLASS.