import { createElement } from 'lwc';
import Jest004 from 'c/jest004';

describe('c-jest004', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('Initial load password component', () => {
        // Arrange
        const element = createElement('c-jest004', {
            is: Jest004
        });

        // Act
        document.body.appendChild(element);

        // Assert
        const initPass = element.shadowRoot.querySelector('.userInfo');
        expect(initPass.textContent).toBe("My Password is *************");
    });
    it('Additional password component test', () => {
        // Arrange
        const element = createElement('c-jest004', {
            is: Jest004
        });

        // Act
        document.body.appendChild(element);

        // Assert
        const inputElement = element.shadowRoot.querySelector('lightning-input');

        inputElement.checked = true

        inputElement.dispatchEvent(new CustomEvent('change'))

        const passwordElement = element.shadowRoot.querySelector('.userInfo')
        
        return Promise.resolve().then(()=>{
           
            expect(passwordElement.textContent).toBe('My Password is Salesforce001')
        })


    });
});