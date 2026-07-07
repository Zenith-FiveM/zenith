const fs = require("fs");

const version = process.env.TGT_RELEASE_VERSION;
const newVersion = version.replace("v", "");
const manifestPath = process.env.MANIFEST_PATH || "zenith-core/fxmanifest.lua";
const manifestFile = fs.readFileSync(manifestPath, { encoding: "utf8" });
const versionStr = `version '${newVersion}'`;
let newFileContent = manifestFile.replace(/\bversion\s+(.*)$/gm, versionStr);

if (!newFileContent.includes(versionStr)) {
  newFileContent = manifestFile.replace(
    /\bgame\s+(.*)$/gm,
    `game 'gta5'\n${versionStr}`,
  );
}

fs.writeFileSync(manifestPath, newFileContent);
