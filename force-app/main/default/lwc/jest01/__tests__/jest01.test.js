import { createElement } from 'lwc';
import Jest01 from 'c/jest01';

describe('c-jest01', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('Testing Jest01', () => {
        // Arrange
        const element = createElement('c-jest01', {
            is: Jest01
        });

        // Act
        document.body.appendChild(element);

         // Assert
         const div = element.shadowRoot.querySelector('div');
         const button = element.shadowRoot.querySelector('lightning-button');
 
         expect(div.textContent).toBe("Hello, World!");
         expect(button.label).toBe("Jest");
    });
});