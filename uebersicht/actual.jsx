import { run } from 'uebersicht';

export const command = "echo $(/usr/local/bin/chunkc tiling::query -d id)";
export const refreshFrequency = 100;

export const render = ({ output }) => {
  return (
    <div>
      <ul>
        {[
          '1: Browser',
          '2: Chat',
          '3: Code',
          '4: Email',
          '5: Code',
          '6: Code',
          '7: Code',
          '8: Code',
          '9: Code',
          '10: Code', 
          ].map((title, index) => (
          <li
            key={title}
            className={output == (index + 1) ? 'active' : ''}
            onClick={() => {
              run(`chunkc tiling::desktop --focus ${index + 1}`).then(console.log)
            }}
          >{title}</li>
          ))}
      </ul>
    </div>
  );
}

export const className = `
  top: 0px;
  left: 0px;
  font: 14px "DankMono Nerd Font", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
  z-index: 10;
  ul {
    list-style: none;
    margin: 0 0 0 1px;
    padding: 0;
  }

  li {
    display: inline-block;
    border: #2f2f2f;
    color: #98d1ce;
    background: #0a0f14;
    padding: 1px 2px;
    margin: 1px;
  }

  li.active {
    color: white;
    background: #073642;
    border: #073642
  }
`;
