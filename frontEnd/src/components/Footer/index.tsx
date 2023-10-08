import { GithubOutlined } from '@ant-design/icons';
import { DefaultFooter } from '@ant-design/pro-components';
import { useIntl } from '@umijs/max';
import React from 'react';

const Footer: React.FC = () => {
  const intl = useIntl();
  const defaultMessage = intl.formatMessage({
    id: '支持一下码外生活吧',
    defaultMessage: '码外生活作品',
  });

  const currentYear = new Date().getFullYear();

  return (
    <DefaultFooter
      style={{
        background: 'none',
      }}
      copyright={`${currentYear} ${defaultMessage}`}
      links={[
        {
          key: 'code',
          title: '生活不易，点个小赞吧',
          href: 'https://pro.ant.design',
          blankTarget: true,
        },
        {
          key: 'GithubOutlined',
          title: <GithubOutlined />,
          href: 'https://github.com/8ecomeDreamer/management_system',
          blankTarget: true,
        },
        {
          key: 'coderWorld',
          title: '码外生活',
          href: 'https://github.com/8ecomeDreamer/management_system',
          blankTarget: true,
        },
      ]}
    />
  );
};

export default Footer;
