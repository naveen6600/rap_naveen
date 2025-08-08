# rap_naveen
naveen rap backup



	

















	

Document statistics:
DOCUMENT IDENTIFICATION
The following is the current information about the document: (Keep all relevant sections)

Object ID/RICEFWB ID	F01_6.2.1
Title	Print formats
Version	1.0
Level ID 3	6.2.1 Print Formats
Author	Miguel Acuña
SAP Version	S/4HANA Private Cloud 2023-FPS02
Type of development	Print format

REVISION HISTORY
Below is a historical record of the document's revisions:

Version	Review author	Date of creation	Feedback	Incident Number/CR
1.0	Miguel Acuña	07/23/2025		

REVISION 
The following is the review section of the document:

Name	Role	Signature	Date
			
			
			
			
Table of Contents
Table of Contents	3
1.	Overview of Requirements Specifications/Stories	5
1.1. Requirement/Story Details	5
1.2. Best Practices / Solution Options	5
1.3. Assumptions	5
1.4. Security and roles	5
1.5. Restrictions and limitations	5
1.6. Error handling	5
1.7. Dependencies / Dependent Configuration	6
2.	Detailed functional design	7
2.1. Summary of Requirements and Business Driver	7
2.2. Alternatives to Object	7
2.3. Impact of implementation	7
2.4. Impact of non-implementation	7
2.5. Current functionality	7
2.6. Performance criteria	8
2.7. Integration Functional Design	8
2.8. Detailed Design Specifications	9
3.	Detailed Technical Design Specifications	18
3.2. Detailed Interface Relevant ABAP Design Specifications	19
3.3. Detailed Specification of Function Module Design - NA	21
3.4. Detailed Object-Oriented Program Design Specification - NA	21
3.5. OData Development Details	22
3.6. Detailed CDS Design Specifications	22
3.7. Detailed Design Specification of AMDP - NA	23
3.8. Detailed details of the BRF – NO configuration	24
3.9. Detailed Interface Design Specifications	24
3.10. Detailed Interface Logic	26
3.11. Details of the transport request:	27
4.	BTP-IS Technical Information	28
4.1. Package Details	28
4.2. Cloud Connector Configuration: N/A	33
4.3. Security	33
4.4. Manage stores – N/A	34
4.5. Error monitoring and management	34
4.6. Connectivity	35
5.	Unit Testing - TBD	45
5.1. Unit Test Cases	45

1.	Overview of Requirements Specifications/Stories
1.1.Requirement/Story Details

Work Order Format

At Viakable, to facilitate the correct execution of maintenance orders, we have a printing format that provides the technician with all the essential information to carry out their activities efficiently and safely.

This format includes, among other key elements:
•	Detailed list of activities to be carried out
•	Spare parts and materials required
•	Relevant technical data of the team
•	Specific instructions or safety recommendations
Having this information printed allows technical staff to have clear guidance during the intervention, ensuring compliance with established procedures and reducing the risk of omissions.

Below are the data that must be printed in the format, the data labels must be available in both Spanish and English 

On the front of the page it will carry the following content:

Header section
Plant No.: Plant Code/Key
Plant Name: Plant Description
Order: Maintenance Order Number
Order Type: Maintenance Order Type
Order Description: Description on Order
Team Name: Top team number
Equipment Description: Top Equipment Description
Activity Type Number: Activity Type Key
Activity Type Description: Activity Type Description
Start Date: Scheduled Start Date of the Maintenance Order

Basic Data Section
Frequency: Frequency of the maintenance plan
Last preventive meter: Date of the last preventive test of the same plan
Technical Location: Key and description of the technical location
Company area: Key and description of the area of the company to which the team belongs
Job Title: Job Key and Job Description
Estimated Time: Total Scheduled Order Time, End Time minus Start Time
Required by: mtto programmer key
No. Review: Review

Activities section
Op: Number of the operation associated with the activity
Machine: Description of the top equipment
Component: Description of the equipment to be maintained
MP/MV: Installation status (machine stopped or working)
Activity Description: Short Activity Description
Time: Estimated time of the activity and unit of measurement
Long Text: Description of the information contained in the long text

Spare parts / materials section
Op: Number of the operation associated with the material
Material: Material Code
Description: Material Description
Quantity: Material quantity required
UM: Unit of Measurement
Sun. Order: Order Request Number
Reservation: Reservation Number



 
Frequency: [Frequency]	Job Title: [Work Center Desc]	 
Ultimo mtto prev: [Last Prev Date]	Estimated Time Work: [Estimated Time Work]	
Technical Location: [Function Location]	Required by: [Planner Desc]	
Company Area: [Area Description]	Revision No.: [rev]	

Op.	Machine	Component	MP/MT	Description of activity	Time		
010	CATCH 1	TRANSMISSION 1	MP	CHECK STRUCTURE	15		
	
CHECKPOINT: CAPTAN TRANSMISSION, 
ACTION TO TAKE: CHECK THE FIXING SCREWS OF THE STRUCTURE AND CHECK THAT IT IS IN GOOD CONDITION 
STANDARD VALUE: 16 lb/ft      IT: NA	
	
030	ANNEALING 1	BAND 1	MP	CHECK BELT TENSION	5	M60	

CHECKPOINT: BANDS, 
ACTION TO TAKE: CHECK THAT IT HAS GOOD TENSION ACCORDING TO THE IT, REPAIR ABNORMALITIES. 
STANDARD VALUE: NA IT: 9999 00 04 T001	

020	DANCER 1	GUIDE PULLEY 3	MP	GUIDE PULLEY OVERHAUL 3	10	DC55	
	
CHECK POINT: DANCER'S PULLEY, ACTION TO TAKE: TURN THE IDLER PULLEY AND PUT YOUR HAND BETWEEN THE ARROW AND THE BEARING IF YOU FEEL DRY OR VIBRATING IN THE ARROW THEN REPLACE THE BEARING, IT: 9999 00 04 T001	
030	ANNEALING 1	BAND 1	MP	CHECK BELT TENSION	25	GM60	
	
CHECKPOINT: BANDS, ACTION TO TAKE: CHECK THAT IT HAS GOOD TENSION ACCORDING TO THE IT, REPAIR ANOMALIES. IT: 9999 00 04 T001	

Remarks____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________

Op.	Material	Description	Quantity	UM	Sun. Order	Reservation
020	DC55	SKF 6000 2RS BEARING	1	PZ	[Request Number]	[Reservation]
030	GM60	GATES V-TYPE CX112 BAND	[Quantity]	[Measure Unit]	[Request Number]	[Reservation]





On the back of the page you will have the following content:

IMPORTANT NOTES:
 1. AFTER MP OF THE MACHINE, CLEAN THE WORK AREA WITH THE CORRECT SEGREGATION OF HAZARDOUS AND NON-HAZARDOUS WASTE GENERATED
2. REPORT CAUSE OF NOT FINISHING MP IN CASE OF NOT FINISHING IT
3. ANY ACTION TAKEN (CHANGE, ADJUSTMENT, ALIGNMENT, ETC.) MUST BE REPORTED IN THE PREVENTIVE MAINTENANCE WORK ORDER
4. FILL IN ALL THE OT FIELDS CORRECTLY
5. SIGN THE ORDER FOR ALL THE PERSONNEL WHO ATTENDED THE MP

	MAINTENANCE			PRODUCTION
 	PERFORMED WORK			I ACCEPT WORK
SIGNATURE	 		SIGNATURE	 
NAME	 		NAME	 
				
			MP START TIME	 
			MP END TIME	 
 

Format Lock and lock sheet

At Viakable, as part of our safety measures during the execution of maintenance work, we use a printed format known as a lock/lock sheet. This document plays a critical role in the prevention of workplace accidents.

Its main purpose is to provide visible and clear information that a machine is under active maintenance, and therefore should not be switched on, operated or tampered with under any circumstances.

The presence of this sheet on the equipment acts as a warning sign for all personnel, reinforcing compliance with safety protocols and helping to avoid incidents that may put the integrity of workers at risk or damage the equipment.

Below are the data that must be printed in the format, the data labels must be available in both Spanish and English 

Name: Name of the technician.
Start Date: Scheduled Start Date of the Maintenance Order
Start Time: Scheduled start time of the maintenance order
End Date: Scheduled End Date of the Maintenance Order
End Time: Scheduled End Time of the Maintenance Order
Supervisor: Code and description of the person in charge of the job
Programmer: Code and description of the job planner
Work Order: Maintenance Order Key or Number
Equipment or installation: Equipment number and description of equipment to be maintained – Number and description of top equipment
Technical Location: Code and description of the technical location
Job Description: Maintenance Order Description 
LOCK AND LOCK CARD
FORBIDDEN
Machinery or equipment should not be activated, nor should the card be removed from this location
 

Name:	[Technician's Name]
Start date:	[Maintenance Start Date]
Start time:	[Maintenance Start Time]
End date:	[Maintenance End Date]
End time:	[Maintenance End Time]
Supervisor:	[Name in charge of the work center]
Programmer:	[MTTO Programmer's Name]
Work Order:	[Work Order Number]
Equipment or installation:	[Equipment to maintain] [Top Team]
Technical Location:	[Key and description of the technical ub]
Job Description:	[MTTO Order Description]

H-A-C-E CHECKLIST OF TAKEN
Take two minutes to do any activity, think about safety, eliminate everything that can cause harm to you and others. Start your work by going through the checklist, H-A-C-E
Speak	"Have I talked to all stakeholders about what I intend to do and how it might affect third parties?"
"Have I talked to the right people about everything that I think could make my job safer?
Actions	"How might my actions affect my own safety?"
"How might my actions affect the safety of others?"
Knowledge	"Do I know the procedures, both written and unwritten?"
"Am I aware of all the dangers of the surroundings and the environment and do I know what to do about each of them?"
Team	"Do I have adequate/appropriate protective equipment for this job?"
"Do I have the right tools and equipment for this particular job and are they in good condition?"
TAKE TWO... and answer their questions
 
1.2.Best Practices / Solution Options
A new printing format will be designed and programmed in which the data and form requested by the business can be included, allowing it to be used in the different plants of the group.
1.3.Assumptions
•	Data conversion exists
•	There is data mapping  
1.4.Security and roles
N/A
1.5.Restrictions and limitations
•	Maintenance order configuration must be in place in SAP S/4HANA 

1.6.Error handling 
N/A
1.7.Dependencies / Dependent Configuration
N/A
2.	Detailed functional design
2.1.Summary of Requirements and Business Driver	
A new printing format will be designed and programmed in which the data and form requested by the business can be included, allowing it to be used in the different plants of the group.
2.2.Alternatives to Object
N/A
2.3.Impact of implementation
The design and development of a new printing format will be able to clearly show all the necessary information for the maintenance team to be clear about the activities to be carried out and everything they involve.
2.4.Current functionality
Currently at Viakable, it manages in a maintenance system a printing format with which it is clear about the tasks to be performed, showing details of labor and spare parts.
2.5.Performance Criteria


	Performance requirements for integration
Target System	Average Transactions/Records and Type (includes input and output):	Maximum Transactions / Logs and Type (includes input and output):	Required throughput (includes input and output)                                                                                                                       
N/A	N/A	N/A	N/A

2.6.Integration Functional Design

App Name	Fountain 	Destiny
N/A	N/A	N/A
N/A	N/A	N/A
Source application interface type (check only one)
Screen	0

Report	0

File	0

Database Table	0

Application Protocol Interface (API)	0

Other (describe)	
Target application interface type (check only one)
Screen	0

Report	0

File	0

Database Table	0

Application Protocol Interface (API)	0

Other (describe)	
Note:  For the legacy application interface, the preferred option is File, Database Table, or Application Protocol Interface (API) and applies to all applications listed above. Because the same file structures are generated by multiple source systems to a single destination, you will need to list each source system. 

Legacy systems	Contact Name
< Name of the source system and description >	<Provide the contact name and information for each system >
Source 1	
Source 2	

Execution method:
(Foreground / Programmed Background /
Manual / On Demand)	N/A
Incoming/Outgoing:	N/A

2.7.Detailed Design Specifications
For the printing format of the maintenance order, we will follow the following steps:

 

Detailed Logic Order Printing Format:
It is recommended to copy the standard program for printing orders "RIPRJT00" as well as the use of the bapi "BAPI_ALM_ORDER_GET_DETAIL" from which we can obtain the vast majority of the fields that are required to print in the format. For the rest of the fields, a direct mapping to the tables will be carried out. 
Step 1.

To execute the bapi, only the number of the order that already comes within the program in the "AUFNR" field is required as an input parameter.

For the header and basic data section:

 

The following data will be extracted using the bapi mentioned above:

Name of the field in the format	Bapi Structure	Name of the field to get in the structure	
No. Plant	ES_HEADER	PLANT	
Work order number	ES_HEADER	ORDER	
Order type	ES_HEADER	YBA2	
Maintenance plan description	ES_HEADER	SHORT_TEXT	
Equipment number	ES_HEADER	EQUIPMENT	
Activity type number	ES_HEADER	PMACTTYPE	
Start date	ES_HEADER	START_DATE	
Technical Location	ES_HEADER	FUNCT_LOC	
No. Review	ES_HEADER	REVIEW	






The following header fields will be extracted through direct mapping in the tables:

Name of the field in the format	Technical Field Name	SAP Table	
Plant Name	NAME1	T001W	
Equipment descript.	EQKTX	TEAM	
Activity type descrip.	ILATX	T353I_T	
Frequency	KTEXT	T351	
Last prev.	IDAT2	VIAUFKST	
Workstation	KTEXT	CRTX	
Estimated time	DAUNO	VIAUF_AFVC	
Required by	INNAM	T024I	

Plant Name: With the order number (AUFNR) go to the VIAUFKST table and retrieve the value from the Center (WERKS) field. Then with that value go to table T001W and retrieve the field value NAME1 (NAME1).

Equipment description: with the order number (AUFNR) go to the AFIH table and retrieve the value of the EQUNR equipment field. Then with this value go to the EQUI table and retrieve the value from the EQKTX field.

Activity type description: with the order number (AUFNR) query the AFIH table and retrieve the value of the field (ILART). Then with the value of the activity class field (ILART) and the current language in system (SPRAS) go to the T353I_T table and retrieve the value of the description field (ILATX).

Frequency: with the order number (AUFNR) consult the AFIH table and retrieve the Mtto Plan (WARPL) and Mtto Position (WAPOS) fields. With those fields go to the MPOS table and retrieve the value of the Strategy (WSTRA) field. Then with that value go to the T351 table and retrieve the value from the Strategy Description (KTEXT) field.

Last Preventive Maintenance: With the order number (AUFNR) query the VIAUFKST table and retrieve the value of the Last Order (LAUFN) field. Then, with the value obtained, perform the query again, now using the value of (LAUFN) as AUFNR to retrieve the closing date value (IDAT2).

Workstation: with the order number (AUFNR) consult the AFIH table and retrieve the value of the Workstation (GEWRK) field. With the value obtained, consult the CRTX table by entering the value in the Object ID field (OBJID) and entering the language (SPRAS) in which the login is located, to obtain the value of the Description field (KTEXT).
Estimated time: with the order number (AUFNR) go to the VIAUF_AFVC table and retrieve the values of the Normal Duration (DAUNO) fields in all existing operations. Then with all these values make a summation. The result of this sum will be in minutes, so in the end, it must be converted from minutes to hours and will be the value that will be painted in the format.
Required by: with the order number (AUFNR) go to the AFIH table and retrieve the value of the planning center (IWERK) and planning group (INGPR) field. With these values go to table T024I and retrieve the value of the glider group name (INNAM) field.

Barcode: For the barcode to be displayed on the printout, it will represent the maintenance order number (AUFNR). It is recommended to use the CODE-128 type.

Step 2:

For the activities section:

 

The following data will be extracted using the bapi mentioned above:

Name of the field in the format	Bapi Structure	Name of the field to get in the structure	
Op.	ET_OPERATIONS	ACTIVITY	
Component	ET_OPERATIONS	EQUIPMENT	
MP/MT	ET_OPERATIONS	SYSTCOND	
Description of the Activity	ET_OPERATIONS	DESCRIPTION	
Time	ET_OPERATIONS	DURATION_NORMAL	

The following fields from the activities section will be extracted through direct mapping in the tables:


Name of the field in the format	Technical Field Name	SAP Table	
Machine	HEKI	V_EQUI_C	
Long text			

Machine: with the order number (AUFNR) go to the table VIAUF_AFVC. As a result, all trades in the order are obtained. For each record in the order, the values of the routing number (AUFPL) and counter (APLZL) fields must be retrieved. Then with these values go to the AFVC table and retrieve for each record the value of the equipment field (EQUNR). Then with this value go to the table V_EQUI_C and retrieve the value of the top equipment field (HEQUI). With this value, consult the EQUI table and bring the description field (EQKTX). This will be the value to be painted in the "Machine" field.

Long text: for each operation within the order there is a long or explanatory text field which must be painted in the format below the detail of the operation. Example:


With the order number (AUFNR) go to the VIAUF_AFVC table to retrieve the value of the Client field (MANDT) as well as all the operations in the order (VORNR). Then, for each of the operations in the order, the values of Operations Waybill No. (AUFPL) and Counter (APLZL) must be retrieved. Similarly, the value of the language field (TXTSP) for each operation.











With the above data obtained as parameters, the function module must be executed READ_TEXT to obtain the long text for each operation.

Client = Principal (MANDT)
ID = AVOT (Always Constant Value in Query)
Language = Language (TXTSP)
NAME = This value will be the result of concatenating (MANDT)+(AUFPL)+(APLZL). 
Example: 130100000020200000001
Object = AUFK (Always Constant Value in Query)

 

Step 3:

For the materials section:

 

The following data will be extracted using the bapi mentioned above:

Name of the field in the format	Bapi Structure	Name of the field to get in the structure	
Op.	ET_COMPONENTS	ACTIVITY	
Material	ET_COMPONENTS	MATERIAL	
Description	ET_COMPONENTS	MATL_DESC	
Quantity	ET_COMPONENTS	REQUIREMENT_QUANTITY	
UM	ET_COMPONENTS	REQUIREMENT_QUANTITY_UNIT	
Sun. Order	ET_COMPONENTS	PREQ_NO	
Reservation	ET_COMPONENTS	RESERV_NO	



For the printing format of the lock and lock sheet, we will follow the following steps:

Detailed Logic Blocking and Padlock Format:
It is required to create a program and form (such as the sample one) that allows the printing of the data of the maintenance order that will form the blocking or blocking card. To print the sheet, the user selects the items to be printed from the maintenance order. For each of the selected positions, a format must be printed individually (if the user selects 5 positions, 5 sheets must be printed, one for each position).
For the reading of the fields, a direct mapping to the tables will be carried out.

Name of the field in the format	Technical Field Name	SAP Table	
Name	NAME	PA0001	
Start Date	GSTRS	VIAUFKST	
Start Time	GSUZS	VIAUFKST	
End Date	GLTRS	VIAUFKST	
End Time	GLUZS	VIAUFKST	
Supervisor	KTEXT	SS24	
Programmer	INNAM	T024I	
Work Order	AUFNR		
Equipment or Installation	EQUNR	AFIH	
Job Description	KTEXT	AUFK	
			

Name (Technician Name): with the order number (AUFNR) go to the VIAUF_AFVC table and retrieve for each selected item the value from the Personnel Number (PERNR) field. With the value of the Personnel Number (PERNR) field, go to table PA0001 and retrieve the Employee Name (ENAME) field. 

Start Date (Maintenance Start Date): with the order number (AUFNR) go to the VIAUFKST table and retrieve the value from the Start Date (GSTRS) field.

Start Time (Maintenance Start Time): With the order number (AUFNR) go to the VIAUFKST table and retrieve the value from the Scheduled Start Time (GSUZS) field.

End Date (Maintenance End Date): With the order number (AUFNR) go to the VIAUFKST table and retrieve the value from the Scheduled End (GLTRS) field.

End Time (Maintenance End Time): with the order number (AUFNR) go to the VIAUFKST table and retrieve the value from the Scheduled End Time (GLUZS) field.

Supervisor (name of the work center manager): with the order number (AUFNR) go to the VIAUFKST table and retrieve the value of the Job Position (GEWRK) and Center (WERKS) fields. Then go to the CRHD table by entering the values in the Object Type (OBJTY) field equal to "A" and in Object ID (OBJID) use the Job Title value (GEWRK) to retrieve the Responsible Person (VERAN) value. Then go to the TC24 table with the values of Center (WERKS) and Responsible (VERAN) to retrieve the value of the Naming (KTEXT) field.

Scheduler (Name of Maintenance Scheduler): with the order number (AUFNR) go to the AFIH table and retrieve the value of the planning center (IWERK) and planning group (INGPR) field. With these values go to table T024I and retrieve the value of the glider group name (INNAM) field.

Work Order (Maintenance Order Number): Order Number (AUFNR).

Equipment or installation (Equipment to be maintained): with the order number (AUFNR) consult the AFIH table and retrieve the value of the equipment field (EQUNR).

Job Description (Maintenance Order Description): With the order number (AUFNR) you can refer to the AUFK table and retrieve the value of the Order Description (KTEXT) field.




















2.7.1. Programming Requirements - TBD

Interface Details	General
Interface Reference Number	
Description	
Volumetric	Average # of objects 	
	# of maximum objects	
	Average # of items per object	
	# Maximum Items per Object	
Dependencies	
Instructions	
Feedback	

GENERAL JOB DETAILS - TBD

Background job name	NA
Description	
Frequency	Online
0 A la carte
0 Real-time / Near-real-time
0 Daily
0 Weekly
0 Biweekly
0 Monthly
0 Quarterly
0 

Step Details	Report Name	NA
	Variant 	NA
	User Passage	NA
Dependencies	
Feedback	





File Descriptions (if applicable) – NA

Output File Requirements for Output Interfaces (if applicable) - NA

Necessary information	Logical file name	File description	Variants	System Name	Location and name of the physical file	Selection requirements	Empty files	Sort Order for Incoming File/Message	Time Period for Archiving the Client File
Description	< file name is commonly referred to by>	< Description of the type and purpose of the file>	< Variants in the logical file name if used>	<System the > file is associated with	<Name and directory path of the > file	< Selection criteria if required>	< Are empty files expected or allowed to be part of normal processing>	<List of columns for the default sort order and ascending or descending indication for each column>	<X Days, Months, Years, etc.>
Source 1	N/A	FSA deductions for employees	N/A	S4 HANA	N/A	N/A	No	N/A	N/A
Source 2									
Source: m—									

2.7.2. Example of a file structure to be placed in the file directory

N/A
2.7.3. Handling integration errors 

The response (RETURN) shall contain the accumulated error/success messages for each execution of the BAPI.

Points of failure

Potential point of failure	Rules for handling errors
Background Work Canceled	N/A
On-screen data entry validation	N/A
Validation of file/message data, when it is picked up by Middleware.	N/A
Mapping and transformation error	RETURN Response
Business Rule Validation and Application Logic Processing Failure	N/A  
Cross-reference error	N/A

Error reporting requirements

Necessary information	Description
Error logging (beyond notification)	BAPI Execution Error Messages
Bug fixes	Viakable and Xignux Users
2.7.4. Error notification

N/A
2.7.5. System errors

N/A
2.7.6. Process log details

N/A  
3.	Detailed Technical Design Specifications

System Version	
Type of development	
Disposal	
Priority	
Estimated complexity	
3.1.1. Performance Criteria - TBD
Capture the system performance criteria and requirements that need to be met.  Note: Add any additional performance considerations that are not captured in the following tables. See the same section in AI Functional Specification for more details. Update this section based on the functional specification.

Performance requirements for the interface
Average Transactions/Registrations and Type per Execution:	<Number> <Type> 
Peak Transactions/Registrations and Type per Execution:	<Number> <Type>
Required Performance:	<'X' transactions per second, minute, hour>

3.1.2. Affected applications 
SAP modules affected
SAP Module	Description of impact/change
	

Affected legacy applications
NON-SAP System	Impact Description
	
3.1.3. Other affected items
3.1.4. Business Flow 


3.1.5. Abbreviations

Acronyms
	
	
	
	
	
3.1.6. References - NA

Referral Links
	

3.2.Detailed interface Relevant ABAP design specifications
3.2.1. General - NA

Program Name:	
Program Description:	
Transaction Code:		Transaction Type:	
Description of the transaction:	
3.2.2. List of affected objects. -NA
Object affected	Guy	Description
		
		

 
3.2.3. Entry / Selection criteria - NA
Field Name	Table Field / Checkbox / Radio Button	Select option (S) or parameter (P)	Comments (Rank, Single/Multiple Select, Patterns, Required, etc.)	Validations (for each field, if any)	Default	Additional validation	Obligatory
							

3.2.4. Detailed Board/Structure Design Specifications - NA
Table/Structure: New/Modify

Table/Structure Name	
Descriptions:	
Table Type:	
Module Name:	
Type of maintenance		
Append the name of the structure:	

3.2.5. Field Details

Field Name
Technician	Field Name	Field Type	Field Length	Course Description	Check Table
					
					
					


 
3.3.Detailed Function Module Design Specification - NA

Function Module Name	
 Description	
Function Group	
Interface name (if BTE)	
Event Name (if BTE)	

3.4.Detailed Object-Oriented Program Design Specification - NA

Class 	
Class Description	
Class Type	
Dinner Class	
Description	
3.4.1. Methods used 

Method Name	Description	Guy	Details
	 		 
 
3.5.OData Development Details 

Service Name	Type of service	Entity set
		

OData Service Input Filter Criteria for Hierarchy Custom Fields: - NA

Field Name	Filter parameters	Filter parameter input value
		
3.6.Detailed CDS Design Specifications 

SQL View Name	
Authorization Check	
User text tag	
Description	
Main Table	

SQL View Name	
Authorization Check	
User text tag	
Description	
Main Table	

SQL View Name	
Authorization Check	
User text tag	
Description	
Main Table	

SQL View Name	
Authorization Check	
User text tag	
Description	
Main Table	

SQL View Name	
Authorization Check	
User text tag	
Description	
Main Table	

SQL View Name	
Authorization Check	
User text tag	
Description	
Main Table	

SQL View Name	
Authorization Check	
User text tag	
Description	
Main Table	


3.6.1. Data Control Language - NA
 
Left field	Right Field/Constant	Comparator (=/</>)	Feedback
 	 	 	 

3.7.Detailed Design Specification of AMDP - NA
AMDP Class	 

3.7.1.TDMA Method: <Method1> NA
 
Method Name	 
Logic	<Language> :
< DB Options>:
< Imports > :
< Exports > :
 
<Detailed logic>

3.8. Detailed BRF – NA configuration details
Output Type	Receptor	Channel	Printer settings	Email Settings	Form Template	Relevance of the output
 	 	 	 	 	 	 


3.9.Detailed interface design specifications

Interface Type:	
Name of the source system:	
Name of the target system:	
Interface Address:	
 Interface Method/Transport Protocol:	
Trigger events:	
Function Module Name (RFC/BAPI):	
Logical file names	
Physical file names	

ABAP Proxy Type	
PI interface name (if an ABAP proxy):	
SWCV		Namespace	


ALE - NA Configuration Information

Distribution model	
Message Type	
Basic IDoc Type		IDOC Extension	
3.9.1. Port Configuration - NA

Shipping Port	
Receiving port	
RFC Destination	
3.9.2. Partner Profile Settings - NA

Membership number		Partner Type	
3.9.3. Copyright © 2019 NA

File Location and Name:	
Logical File Name:	

3.9.4. Data mapping 

3.9.5. Dependencies - NA

Object Type:		Event: 	

3.9.6. External Connectivity - NA
3.10.Detailed interface logic
 
3.11.Transportation Request Details:
4.	BTP-IS Technical Information
4.1.Package Details 

Header	
Package Name	
Technical name	
Short Description	
Version	
Seller	

Overview	
Description	
Supported Platform	
Category	

Artifacts (1)	
Data integration	
Name	
Description	
Project	
Fountain	
White	
Integration Flow	
Name	
IDENTIFICATION	
Product Profile	
Description	
Sender	
Receptor	
OData Services	0 Create                              0 Climb

Name	
Namespace	
IDENTIFICATION	
Description	
OData version	
Value Mapping	0 Create                              0 Climb

Name	
IDENTIFICATION	
Description	
Fountain	
White	

Tags	
Product	
Country	
Keyword	
Line of business	
Industry	
4.1.1. Integration flow details:

General	
Name	
IDENTIFICATION	
Description	
Runtime Configuration	
Product Profile	
Namespace mapping	
Allowed header(s)	
HTTP Session Reuse	1 None          0 In the exchange          0 About the integration flow
Error Configuration	
Return Exception to Sender	0

Resources - Premises	
Name	Guy	Action
MM_S4HANA_To_SFDC_CustomerMaster		
MM_S4HANA_To_Salesforce_CustomerMaster		
XSLTMapping1
	
XSLTMapping2
	
134_CustomerMaster_Salesforce_MT_CustomerOutbound_Req		
BP_Customer_SF_Source		
BP_Merged_Source_Structure		
gsdbtponscp_44380_sap_opu_odata_sap_ZOTC_BUS_PARTNER_SF_SRVB		
ZSD_CDS_I_BP_CONTACT_NAMEEntityGET
	
ZSD_CUSTOMER_MASTER_CDS_IEntityGET
	
Zeros
	
Resources - Global		
Name		
SC_COMMON_SCRIPTS		
Outsourced parameters	
Name	Value
Address	
AmberRoadEndpoint	
Credential Name	
Personalized consultation	
CustomODataAddress	
Log Upload	
EnableErrorPayload	
Email	
MailServerAddress	
MailTo	
JMSQueueName	
QueueName	
PartnerFunction	

Resource attachments	
Guy	1 Hyphen       0 File          1 Scheme      1 Cartography

Attachment	
Cartography	
Schemes	
Schemes	
Schemes	
Schemes	
Schemes	
Schemes	
Schemes	
Schemes	
Schemes	
Groovy Script	
Groovy Script	
Groovy Script	
IFLOW Representation




4.1.2. Pre-Packaged Content Reference Packs – N/A

Pre-packaged content	
Package Name	
Guy	0 Data integration  0 IFlow   0 OData Service  0 Value assignments

Name	

4.1.2.1.	Package Details 1qr'rD1'Global
Header	
Package Name	
Technical name	
Short Description	
Version	
Seller	

Overview	
Description	
Supported Platform	
Category	

Artifacts (1)	
Data integration	
Name	
Description	
Project	
Fountain	
White	
Integration Flow	
Name	
IDENTIFICATION	
Product Profile	
Description	
Sender	
Receptor	
OData Services	0 Create                              0 Climb

Name	
Namespace	
IDENTIFICATION	
Description	
OData version	
Value Mapping	0 Create                              0 Climb

Name	
IDENTIFICATION	
Description	
Fountain	
White	

Tags	
Product	
Country	
Keyword	
Line of business	
Industry	
4.1.3.1	Global integration flow details:

General	
Name	
IDENTIFICATION	
Description	
Runtime Configuration	
Product Profile	
Namespace mapping	
Allowed header(s)	
HTTP Session Reuse	1 None          0 In the exchange          0 About the integration flow

Error Configuration	
Return Exception to Sender	0

Resources	
Name	Guy	Action
		
Outsourced parameters	
Name	Value
BP_Expiry_Salesforce	
BP_Retention_Salesforce	


4.2.Cloud Connector Configuration: N/A

SAP SCC	
Sub-account name	
Guy	
Location ID	

4.3.Safety 

Safety material
Name	Guy	State	Implemented by	Deployed on
				
4.3.1. Manage Keystore: N/A

Safety material
Alias	Guy	Owner	Valid until	Last modified on
				
4.4.Manage Stores – N/A

4.4.1. Data Warehouse -N/A

Data Warehouse	
Name	
4.4.2. Variable - N/A

Variables
Name	Visibility	Integration Flow	Updated at	Store up to
				
4.4.3. Number Range: N/A

Number Range(s)
Name	Minimum value	Maximum value	Next Value	Field Length	Rotate	Implemented by	Deployed on
							

4.5.Error monitoring and management 

Log settings	
Logging Level	0 None 1 Information 0 Debug 0 Trace


 
4.6.Connectivity

4.6.1. SOAP Transmitter 

General	
CHANNEL DETAILS	
Name	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	0 SAP RM                      1 1.x SOAP

CONNECTION	
CONNECTION DETAILS	
Address	
Service Definition	1 Manual                     0 WSDL

URL to WSDL	
Using WS-Addressing	0

Message Exchange Pattern	0 One-way                  1 Request-Response

Processing Settings	0 Robust                      0 WS Standard

Authorization	1 User role                  0 Customer Certificate

User role:	
Client Certificate Authorization	
Subject: DN	
WS-Security	
BASIC SETUP	
WS-Security Configuration	1None     0 via manual configuration on the channel

SIGNING AND ENCRYPTION	
WS Security Type	0 Verify message response and signature
0 Verify and decrypt the message and sign and encrypt the response
Private Key Aliases for Response Signing	
Public key aliases for response encryption	
Signature algorithm	0 SHA1/RSA  0 SHA256/RSA   0 SHA512/RSA

Signature Order	0 Encrypt before signing
0 Sign before encryption

Assertion of the set of algorithms	0 Basic 128 rsa 15
0 Basic 256 SHA 256
0 Triple RSA 15

Save signed incoming message	0

Check Timestamp	0

Sender meets basic security profile	0

INITIATOR TOKEN	
Include strategy	0 Always to the recipient

X509 Token Assertion	0 Require Issuer Serial Reference
0 Require Key Identifier Reference
0 Require fingerprint reference
0 WSS X509 V3 Token 10

RECIPIENT TOKEN	
Include strategy	0 Always to the initiator         0 Never

CONDITIONS	
MAXIMUM MESSAGE SIZE	
Body size (in MB)	
Size of attachments (in MB)	
4.6.2. JMS Transmitter 

General	
Name	
CHANNEL DETAILS	
Address	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	
Treatment	
PROCESSING DETAILS	
Tail Name	
Number of concurrent processes	
RETRY DETAILS	
Retry interval (in min)	
Exponential regression	1 

Maximum retry interval	
Dead-letter queue	1

4.6.3. JMS Receiver 

General	
Name	
CHANNEL DETAILS	
Address	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	
Treatment	
PROCESSING DETAILS	
Tail Name	
Retention threshold for alerts (in d)	
Expiration period (in d)	
Compress Stored Message	1 

Encrypt Stored Message	1 

Transfer Exchange Properties	0


4.6.4. HTTP Receiver 

General	
Name	
CHANNEL DETAILS	
Address	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	
Connection	
CONNECTION DETAILS	
Address	
Consultation	
Proxy Type	1 Internet     0 On-site     0 Manual

Method	0 PUT     1 EXPOSE     0 GET    0 ERASE  0 TRACE 0 HEAD    0 Dynamic

Authentication	1 Basic   0 OAuth2 SAML Carrier Assertion    0 OAuth2 client credentials
0 None   0 Customer Certificate                              0 Main Propagation

Credential Name	
Private Key Alias Name	
Timeout (in ms)	
Initiate exception in case of error	0 

Attach error details in case of error	0 

HEADER DETAILS	
Request headers	
Response Headers	

4.6.5. MAIL Receiver
General	
Name	
CHANNEL DETAILS	
Address	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	
CONNECTION DETAILS	
Address	
Proxy Type	1 Internet                 0 On-site

Location ID	
Timeout (in ms)	
Protection	0 Off     1 STARTTLS Required 0 STARTTLS Optional
Authentication	1 None    0 Encrypted username/password 0 Simple Username/Password
TREATMENT	
Of	
For	
Cc	
Bcc	
Affair	
Mail body	
Type Body Mime	1Text/Plan    0 Text/HTML    0 Text/CSV  
0Application/ZIP 0 Application/XML 0 Application/X-Gzip 0 Application/Octet-Stream 0 Application/JSON
Body Coding	1 UTF-80 ISO-8859-1 0 US-ASCII0 Windows-1252
EMAIL ATTACHMENTS	
Accessories	
Name	Type of mime	Fountain	Header Name
AmberRoadInputData.xml	Application/XML	Header	AmberRoadInput
Add message attachments	1

Content Transfer Encoding	1Automatic 0 7-bit0 8-bit  
0Base64 0 Binary0 Quoted-Printable

Safety	
Signature Type and Encryption	1None 0 S/MIME encryption0 S/MIME signature
0 S/MIME signature and encryption


4.6.6. ODATA Receiver 

General	
Name	
CHANNEL DETAILS	
Address	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	
Adapter Specific	
CONNECTION DETAILS	
Address	http://gsdbtponscp:44380/sap/opu/sap/API_BUSINESS_PARTNER
Proxy Type	0Internet                                 0Manual                           1On-site

Location ID	TBD
Authentication	1Basic                                      0Customer Certificate           0None                                                  0OAuth2 client credentials 0 OAuth2 SAML Carrier Assertion
0Main Propagation

Credential Name	
Private Key Aliases	
Protected by CSRF	1

PROCESSING DETAILS	
Operation	0 Create(POST)       0 Delete(DELETE)       0 Importing Functions
1 Consultation (GET)          0 Read (GET)                0 Update (PUT)
0 Merge (MERGE)   0 Patch (PATCH)

Resource Path	
Fields	
Enable batch processing	0

Consultation options	
Custom Query Options	
Content Type	1 Atom                     0 JSON

Encoding content types	0 None                     0 UTF-8

Page Size	
Page Process	0

Standby Time (in min)	
METADATA DETAILS	
Request headers	
Custom query parameters	
Message Protocol	
CONNECTION DETAILS	
Address	
Proxy Type	0Internet                                 0Manual

Location ID	
Authentication	0Basic                                      0None

Credential Name	
Allow Fragmentation	0

Standby Time (in min)	
PROCESSING DETAILS	
Operation	0 Create(POST)                   0 Consultation (GET)                 0 Update (PUT)
Resource Path	
Consultation options	

Get Call 2

General	
Name	
CHANNEL DETAILS	
Address	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	
Adapter Specific	
CONNECTION DETAILS	
Address	
Proxy Type	0Internet                                 0Manual                           1On-site

Location ID	TBD
Authentication	1Basic                                      0Customer Certificate           0None                                                  0OAuth2 client credentials 0 OAuth2 SAML Carrier Assertion
0Main Propagation

Credential Name	
Private Key Aliases	
Protected by CSRF	1

Reuse connection	1

PROCESSING DETAILS	
Operation	0 Create(POST)       0 Delete(DELETE)       0 Importing Functions
1 Consultation (GET)          0 Read (GET)                0 Update (PUT)
0 Merge (MERGE)   0 Patch (PATCH)

Resource Path	
Fields	
Enable batch processing	0

Consultation options	
Custom Query Options	
Content Type	1 Atom                     0 JSON

Encoding content types	0 None                     0 UTF-8

Page Size	
Page Process	0

Standby Time (in min)	
METADATA DETAILS	
Request headers	
Custom query parameters	
Message Protocol	
CONNECTION DETAILS	
Address	
Proxy Type	0Internet                                 0Manual

Location ID	
Authentication	0Basic                                      0None

Credential Name	
Allow Fragmentation	0

Standby Time (in min)	
PROCESSING DETAILS	
Operation	0 Create(POST)                   0 Consultation (GET)                 0 Update (PUT)
Resource Path	
Consultation options	


4.6.7. Salesforce Receiver
General	
Name	
CHANNEL DETAILS	
Address	
System	
Description	
ADAPTER DETAILS	
Adapter Type	
Transport protocol	
Message Protocol	
Connection	
CONNECTION DETAILS	
Authentication	1 OAuth Client Credentials     0 0 

Address	
Basic Credential Name	
Security Token Aliases	
OAuth Credential Name	
Connection timeout (in ms)	
Response Timeout (in ms)	
Deferred authentication	1

Treatment	
PROCESSING DETAILS	
Guy	1Apex Call 0 0

Method Name	1EXPOSE  0 0

URL relating to the resource	
FORMAT	
Payload format	1Application/JSON 0 0

HEADER SETTINGS	
Output headers	
Name	
Content Type	




5.	Unit Testing - TBD
5.1.Unit Test Cases
Identify the test scenario that will be used to test the development. (Required)

Testing Considerations	Scope of tests (within SAP (IS) / outside SAP (OS) / both (BO))	Expected date of the test
To perform development tests, initially you must have the name of the programs and forms since they must be added to the configuration so that they can be invoked.

Send the name of the program and the form to the functional to register
	 
In room 130 there is the following 4000186 order with which the printing can be consulted and executed.



	MM-DD-YY





