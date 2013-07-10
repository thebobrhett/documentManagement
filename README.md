documentManagement
==================

A document management written in classic asp, utilizing mySQL, to manage scanned document and metadata

This website is designed to allow you to manage scanned documents of various types. Document types may be defined along with what types of data will be collected when a document is scanned and added to the system. This application does not have ocr as a feature but it could be added. The idea is that documents in virtually any mime-supported format (pdf, doc, docx, xls, mp3, etc) can be added to the database. The document is copied to a file store where the hierarchy is based on the type of document and the year in which it was scanned (this is to facilitate implemnentation of destruction of documents as part of a document retention policy).

Once the document has been added to the database a series of fields must be filled in with metadata relevant to the document. There is a webpage for defining document type, what types of metadata are associated with that document type, and whether the metadata is optional or required.

The only security currently built in is that for a user vs an administrator. A user can add and view documents. An administrator can also define document types and delete documents.

There is also a routing system built in that allows a document to be routed to active domain members for review or approval. Notifications utilize smtp.

There is a query screen that allows you to search for documents by type, metadata, creator, etc.

The document store folder hierarchy is:
\\hostname\docmgt -> docs -> year (like associated fiscal year)-> type (like invoices or contracts) 
                     temp (scratch area for docs being added)
