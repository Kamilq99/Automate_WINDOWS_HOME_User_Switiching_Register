# Automation of the Registry Editing Process for Creating an Administrator Account on Windows Home Version

In my service work at my facility, I encountered the need to create an administrator account on Windows 10 Home in order to restrict the rights of the person using the equipment, for example, to prevent them from installing software without the oversight of the department responsible for this control.

The solution is to update the entry in the Windows Registry at the location **`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System`**.

The creation of the automation script was inspired by a post from user Prakhar_Khare on the Microsoft forum.

Available at the link: [https://answers.microsoft.com/en-us/windows/forum/all/fast-user-switching-entry-missing-on-start-menu/f2320ace-eec0-4220-893e-3375918074a0](https://answers.microsoft.com/en-us/windows/forum/all/fast-user-switching-entry-missing-on-start-menu/f2320ace-eec0-4220-893e-3375918074a0)

**NOTE!** The script must be run with Administrator privileges.