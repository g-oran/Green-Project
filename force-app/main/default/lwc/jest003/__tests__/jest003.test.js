import { createElement } from 'lwc';
import Jest003 from 'c/jest003';

describe('c-jest003', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('jest0003 positive test', () => {
        // Arrange
        const element = createElement('c-jest003', {
            is: Jest003
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        const text = element.shadowRoot.querySelector('p');
        expect(text.textContent).toBe("Hello, Kenny!");
    });
    it('jest0003 negative test', () => {
        // Arrange
        const element = createElement('c-jest003', {
            is: Jest003
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        const text = element.shadowRoot.querySelector('p');
        expect(text.textContent).not.toBe("Hello, John!");
    });
    it('jest0003 input component test', () => {
        // Arrange
        const element = createElement('c-jest003', {
            is: Jest003
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');

        const lightningInput = element.shadowRoot.querySelector('lightning-input');
        lightningInput.value = "Mary";
        
        lightningInput.dispatchEvent(new CustomEvent('change'));

        const text = element.shadowRoot.querySelector('p');

        return Promise.resolve().then(()=>{
            expect(text.textContent).toBe('Hello, Mary!')
        })

    });
});