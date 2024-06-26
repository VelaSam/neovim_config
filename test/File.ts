public class File {
    private fileName: string;
    private fileSize: number;

    constructor(fileName: string, fileSize: number) {
        this.fileName = fileName;
        this.fileSize = fileSize;
    }

    // Method to get the file name
    getFileName(): string {
        return this.fileName;
    }

    // Method to get the file size
    getFileSize(): number {
        return this.fileSize;
    }

    // Method to display file details
    displayFileInfo(): void {
        console.log(`File Name: ${this.fileName}`);
        console.log(`File Size: ${this.fileSize} bytes`);
    }
}

// Create an instance of File
const myFile = new File("example.txt", 1024);

// Call methods to get and display file information
console.log("File Name:", myFile.getFileName());
console.log("File Size:", myFile.getFileSize(), "bytes");
console.log("hello world");


myFile.displayFileInfo();
