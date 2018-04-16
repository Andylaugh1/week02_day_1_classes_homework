require("minitest/autorun")
require("minitest/rg")
require_relative("../codeclan_student")

class TestCCStudent < MiniTest::Test

  def test_get_student_name()
    student = CCStudent.new("Rachel", 21,"I can talk!")
    assert_equal("Rachel", student.get_name())
  end

  def test_get_student_cohort()
    student = CCStudent.new("Rachel", 21, "I can talk!")
    assert_equal(21, student.get_cohort())
  end

  def test_set_student_name
    student = CCStudent.new("Rachel", 21, "I can talk!")
    student.set_name("Andy")
    assert_equal("Andy", student.get_name())
  end

  def test_set_student_cohort
    student = CCStudent.new("Rachel", 21, "I can talk!")
    student.set_cohort(23)
    assert_equal(23, student.get_cohort())
  end

  def test_student_talk
    student = CCStudent.new("Rachel", 21, "I can talk!")
    assert_equal("I can talk!", student.student_talk())
  end

  def test_fav_language
    student = CCStudent.new("Rachel", 21, "I can talk!")
    student.fav_language("Ruby")
    assert_equal("I love Ruby", student.fav_language("Ruby"))
  end


end
