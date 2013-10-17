package rea

class LectureService {

    def findLecture(username, classname) {

		def user = User.findByUsername(username)
		Lecture.findByUserAndName(user, classname)
    }
}
