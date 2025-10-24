import type { Site, Metadata, Socials } from "@types";

export const SITE: Site = {
  NAME: "Tangent",
  EMAIL: "essiparent@icloud.com",
  NUM_POSTS_ON_HOMEPAGE: 3,
  NUM_WORKS_ON_HOMEPAGE: 2,
  NUM_PROJECTS_ON_HOMEPAGE: 3,
};

export const HOME: Metadata = {
  TITLE: "Home",
  DESCRIPTION: "tangent.to - consultants in data science.",
};

export const BLOG: Metadata = {
  TITLE: "Blog",
  DESCRIPTION: "Updates and insights on our data science projects and methods.",
};

export const WORK: Metadata = {
  TITLE: "Work",
  DESCRIPTION: "Selected client engagements and long-running collaborations.",
};

export const PROJECTS: Metadata = {
  TITLE: "Projects",
  DESCRIPTION: "A collection of ours projects, with links to repositories and demos.",
};

export const SOCIALS: Socials = [
  { 
    NAME: "github",
    HREF: "https://github.com/tangent-studio"
  },
  { 
    NAME: "linkedin",
    HREF: "https://www.linkedin.com/in/essi-parent-b1b61a24b/",
  }
];
