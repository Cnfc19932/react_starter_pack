import React from 'react';
import { storiesOf } from '@storybook/react';
import { Hello } from './Hello';

storiesOf('Button', module)
  .add('with text', () => (
    <Hello compiler={'Takoe'} framework={'React'} />
  ))
  .add('with emoji', () => (
    <Hello compiler={'Takoe'} framework={'React'} />
  ));   