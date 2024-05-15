import './css/App.css'
import Student from "./components/Student"
import Table from './components/Table'
import Profile from './components/Profile'
import MainInfo from './components/MainInfo'
import SocialLife from './components/SocialLife'
import Error from './components/Error'
import Events from './components/Events'
import Achivments from './components/Achivments'
import Chat from './components/Chat'
import Education from './components/Education'

import Admin from './components/Admin'
import Registrate from './components/Admin/Registrate'
import RegistrateStudent from './components/Admin/RegistrateStudent'
import RegistrateTeacher from './components/Admin/RegistrateTeacher'
import AddEvent from './components/Admin/AddEvent'

import Teacher from './components/Teacher/Teacher'
import ProfileTeacher from './components/Teacher/ProfileTeacher'
import TeacgerMainInfo from './components/Teacher/TeacherMainInfo'
import TableTeacher from './components/Teacher/TableTeacher'



import { Route, Routes, Outlet } from 'react-router-dom'
import Choose from './components/Choose'


function App() {
  return (
    <>
      <Choose />
      <Routes>
        <Route path='student/*' element={<Student />}>
          <Route path="rasp" element={<Table />} />
          <Route path="profile/" element={<Profile />}>
            <Route path="main-info" element={<MainInfo />} />
            <Route path="social-life" element={<SocialLife />} />
            <Route path="achivements" element={<Achivments />} />
          </Route>
          <Route path="event-list" element={<Events />} />
          <Route path="messenger" element={<Chat />} />
          <Route path="education" element={<Education />} />
          <Route path="*" element={<Error />} />
        </Route>

        <Route path='admin/*' element={<Admin />}>
          <Route path="registration" element={<Registrate />} >
            <Route path="create_event" element={<RegistrateStudent />} />
            <Route path="create_event" element={<RegistrateTeacher />} />
          </Route>
          <Route path="create_event" element={<AddEvent />} />
          <Route path="event-list" element={<Events />} />
          <Route path="*" element={<Error />} />
        </Route>

        <Route path='teacher/*' element={<Teacher />}>
          <Route path="profile/" element={<ProfileTeacher />}>
            <Route path="main-info" element={<TeacgerMainInfo />} />
          </Route>
          <Route path="rasp" element={<TableTeacher />} />
          <Route path="event-list" element={<Events />} />
          <Route path="messenger" element={<Chat />} />
          <Route path="education" element={<Education />} />
          <Route path="*" element={<Error />} />
        </Route>
      </Routes>


    </>
  )
}

export default App
