/*
 *  Phusion Passenger - https://www.phusionpassenger.com/
 *  Copyright (c) 2017-2018 Phusion Holding B.V.
 *
 *  "Passenger", "Phusion Passenger" and "Union Station" are registered
 *  trademarks of Phusion Holding B.V.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 *  THE SOFTWARE.
 */

#ifdef INTELLISENSE
	// This include does nothing, but keeps IntelliSense happy.
	#include <ap_config.h>
#endif

/*
 * DirConfig/AutoGeneratedManifestGeneration.cpp is automatically generated from DirConfig/AutoGeneratedManifestGeneration.cpp.cxxcodebuilder,
 * using definitions from src/ruby_supportlib/phusion_passenger/apache2/config_options.rb.
 * Edits to DirConfig/AutoGeneratedManifestGeneration.cpp will be lost.
 *
 * To update DirConfig/AutoGeneratedManifestGeneration.cpp:
 *   rake apache2
 *
 * To force regeneration of DirConfig/AutoGeneratedManifestGeneration.cpp:
 *   rm -f src/apache2_module/DirConfig/AutoGeneratedManifestGeneration.cpp
 *   rake src/apache2_module/DirConfig/AutoGeneratedManifestGeneration.cpp
 */

#include "../ConfigGeneral/ManifestGeneration.h"

namespace Passenger {
namespace Apache2Module {


inline void
ConfigManifestGenerator::autoGenerated_generateConfigManifestForDirConfig(server_rec *serverRec, core_server_config *csconf,core_dir_config *cdconf, DirConfig *pdconf, DirConfigContext context) {
	Json::Value *appOptionsContainer = NULL;
	Json::Value *locOptionsContainer = NULL;

	if (pdconf->mAllowEncodedSlashesExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerAllowEncodedSlashes",
			sizeof("PassengerAllowEncodedSlashes") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mAllowEncodedSlashesSourceFile,
			pdconf->mAllowEncodedSlashesSourceLine);
		hierarchyMember["value"] = pdconf->mAllowEncodedSlashes == Apache2Module::ENABLED;
	}
	if (pdconf->mAppEnvExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerAppEnv",
			sizeof("PassengerAppEnv") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mAppEnvSourceFile,
			pdconf->mAppEnvSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mAppEnv.data(),
			pdconf->mAppEnv.data() + pdconf->mAppEnv.size());
	}
	if (pdconf->mAppGroupNameExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerAppGroupName",
			sizeof("PassengerAppGroupName") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mAppGroupNameSourceFile,
			pdconf->mAppGroupNameSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mAppGroupName.data(),
			pdconf->mAppGroupName.data() + pdconf->mAppGroupName.size());
	}
	if (pdconf->mAppLogFileExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerAppLogFile",
			sizeof("PassengerAppLogFile") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mAppLogFileSourceFile,
			pdconf->mAppLogFileSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mAppLogFile.data(),
			pdconf->mAppLogFile.data() + pdconf->mAppLogFile.size());
	}
	if (pdconf->mAppRootExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerAppRoot",
			sizeof("PassengerAppRoot") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mAppRootSourceFile,
			pdconf->mAppRootSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mAppRoot.data(),
			pdconf->mAppRoot.data() + pdconf->mAppRoot.size());
	}
	if (pdconf->mAppStartCommandExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerAppStartCommand",
			sizeof("PassengerAppStartCommand") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mAppStartCommandSourceFile,
			pdconf->mAppStartCommandSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mAppStartCommand.data(),
			pdconf->mAppStartCommand.data() + pdconf->mAppStartCommand.size());
	}
	if (pdconf->mAppTypeExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerAppType",
			sizeof("PassengerAppType") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mAppTypeSourceFile,
			pdconf->mAppTypeSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mAppType.data(),
			pdconf->mAppType.data() + pdconf->mAppType.size());
	}
	if (pdconf->mBaseURIsExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerBaseURI",
			sizeof("PassengerBaseURI") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mBaseURIsSourceFile,
			pdconf->mBaseURIsSourceLine);
		hierarchyMember["value"] = strCollectionToJson< std::set<std::string>, std::string >(
			pdconf->mBaseURIs);
	}
	if (pdconf->mBufferResponseExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerBufferResponse",
			sizeof("PassengerBufferResponse") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mBufferResponseSourceFile,
			pdconf->mBufferResponseSourceLine);
		hierarchyMember["value"] = pdconf->mBufferResponse == Apache2Module::ENABLED;
	}
	if (pdconf->mBufferUploadExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerBufferUpload",
			sizeof("PassengerBufferUpload") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mBufferUploadSourceFile,
			pdconf->mBufferUploadSourceLine);
		hierarchyMember["value"] = pdconf->mBufferUpload == Apache2Module::ENABLED;
	}
	if (pdconf->mEnabledExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerEnabled",
			sizeof("PassengerEnabled") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mEnabledSourceFile,
			pdconf->mEnabledSourceLine);
		hierarchyMember["value"] = pdconf->mEnabled == Apache2Module::ENABLED;
	}
	if (pdconf->mErrorOverrideExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerErrorOverride",
			sizeof("PassengerErrorOverride") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mErrorOverrideSourceFile,
			pdconf->mErrorOverrideSourceLine);
		hierarchyMember["value"] = pdconf->mErrorOverride == Apache2Module::ENABLED;
	}
	if (pdconf->mForceMaxConcurrentRequestsPerProcessExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerForceMaxConcurrentRequestsPerProcess",
			sizeof("PassengerForceMaxConcurrentRequestsPerProcess") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mForceMaxConcurrentRequestsPerProcessSourceFile,
			pdconf->mForceMaxConcurrentRequestsPerProcessSourceLine);
		hierarchyMember["value"] = pdconf->mForceMaxConcurrentRequestsPerProcess;
	}
	if (pdconf->mFriendlyErrorPagesExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerFriendlyErrorPages",
			sizeof("PassengerFriendlyErrorPages") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mFriendlyErrorPagesSourceFile,
			pdconf->mFriendlyErrorPagesSourceLine);
		hierarchyMember["value"] = pdconf->mFriendlyErrorPages == Apache2Module::ENABLED;
	}
	if (pdconf->mGroupExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerGroup",
			sizeof("PassengerGroup") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mGroupSourceFile,
			pdconf->mGroupSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mGroup.data(),
			pdconf->mGroup.data() + pdconf->mGroup.size());
	}
	if (pdconf->mHighPerformanceExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerHighPerformance",
			sizeof("PassengerHighPerformance") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mHighPerformanceSourceFile,
			pdconf->mHighPerformanceSourceLine);
		hierarchyMember["value"] = pdconf->mHighPerformance == Apache2Module::ENABLED;
	}
	if (pdconf->mLoadShellEnvvarsExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerLoadShellEnvvars",
			sizeof("PassengerLoadShellEnvvars") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mLoadShellEnvvarsSourceFile,
			pdconf->mLoadShellEnvvarsSourceLine);
		hierarchyMember["value"] = pdconf->mLoadShellEnvvars == Apache2Module::ENABLED;
	}
	if (pdconf->mLveMinUidExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerLveMinUid",
			sizeof("PassengerLveMinUid") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mLveMinUidSourceFile,
			pdconf->mLveMinUidSourceLine);
		hierarchyMember["value"] = pdconf->mLveMinUid;
	}
	if (pdconf->mMaxPreloaderIdleTimeExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerMaxPreloaderIdleTime",
			sizeof("PassengerMaxPreloaderIdleTime") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mMaxPreloaderIdleTimeSourceFile,
			pdconf->mMaxPreloaderIdleTimeSourceLine);
		hierarchyMember["value"] = pdconf->mMaxPreloaderIdleTime;
	}
	if (pdconf->mMaxRequestQueueSizeExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerMaxRequestQueueSize",
			sizeof("PassengerMaxRequestQueueSize") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mMaxRequestQueueSizeSourceFile,
			pdconf->mMaxRequestQueueSizeSourceLine);
		hierarchyMember["value"] = pdconf->mMaxRequestQueueSize;
	}
	if (pdconf->mMaxRequestsExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerMaxRequests",
			sizeof("PassengerMaxRequests") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mMaxRequestsSourceFile,
			pdconf->mMaxRequestsSourceLine);
		hierarchyMember["value"] = pdconf->mMaxRequests;
	}
	if (pdconf->mMeteorAppSettingsExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerMeteorAppSettings",
			sizeof("PassengerMeteorAppSettings") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mMeteorAppSettingsSourceFile,
			pdconf->mMeteorAppSettingsSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mMeteorAppSettings.data(),
			pdconf->mMeteorAppSettings.data() + pdconf->mMeteorAppSettings.size());
	}
	if (pdconf->mMinInstancesExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerMinInstances",
			sizeof("PassengerMinInstances") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mMinInstancesSourceFile,
			pdconf->mMinInstancesSourceLine);
		hierarchyMember["value"] = pdconf->mMinInstances;
	}
	if (pdconf->mMonitorLogFileExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerMonitorLogFile",
			sizeof("PassengerMonitorLogFile") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mMonitorLogFileSourceFile,
			pdconf->mMonitorLogFileSourceLine);
		hierarchyMember["value"] = strCollectionToJson< std::set<std::string>, std::string >(
			pdconf->mMonitorLogFile);
	}
	if (pdconf->mNodejsExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerNodejs",
			sizeof("PassengerNodejs") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mNodejsSourceFile,
			pdconf->mNodejsSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mNodejs.data(),
			pdconf->mNodejs.data() + pdconf->mNodejs.size());
	}
	if (pdconf->mPythonExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerPython",
			sizeof("PassengerPython") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mPythonSourceFile,
			pdconf->mPythonSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mPython.data(),
			pdconf->mPython.data() + pdconf->mPython.size());
	}
	if (pdconf->mRestartDirExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerRestartDir",
			sizeof("PassengerRestartDir") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mRestartDirSourceFile,
			pdconf->mRestartDirSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mRestartDir.data(),
			pdconf->mRestartDir.data() + pdconf->mRestartDir.size());
	}
	if (pdconf->mRubyExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerRuby",
			sizeof("PassengerRuby") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mRubySourceFile,
			pdconf->mRubySourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mRuby.data(),
			pdconf->mRuby.data() + pdconf->mRuby.size());
	}
	if (pdconf->mSpawnMethodExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerSpawnMethod",
			sizeof("PassengerSpawnMethod") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mSpawnMethodSourceFile,
			pdconf->mSpawnMethodSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mSpawnMethod.data(),
			pdconf->mSpawnMethod.data() + pdconf->mSpawnMethod.size());
	}
	if (pdconf->mStartTimeoutExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerStartTimeout",
			sizeof("PassengerStartTimeout") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mStartTimeoutSourceFile,
			pdconf->mStartTimeoutSourceLine);
		hierarchyMember["value"] = pdconf->mStartTimeout;
	}
	if (pdconf->mStartupFileExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerStartupFile",
			sizeof("PassengerStartupFile") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mStartupFileSourceFile,
			pdconf->mStartupFileSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mStartupFile.data(),
			pdconf->mStartupFile.data() + pdconf->mStartupFile.size());
	}
	if (pdconf->mStickySessionsExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerStickySessions",
			sizeof("PassengerStickySessions") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mStickySessionsSourceFile,
			pdconf->mStickySessionsSourceLine);
		hierarchyMember["value"] = pdconf->mStickySessions == Apache2Module::ENABLED;
	}
	if (pdconf->mStickySessionsCookieNameExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*locOptionsContainer,
			"PassengerStickySessionsCookieName",
			sizeof("PassengerStickySessionsCookieName") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mStickySessionsCookieNameSourceFile,
			pdconf->mStickySessionsCookieNameSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mStickySessionsCookieName.data(),
			pdconf->mStickySessionsCookieName.data() + pdconf->mStickySessionsCookieName.size());
	}
	if (pdconf->mUserExplicitlySet) {
		findOrCreateAppAndLocOptionsContainers(serverRec, csconf, cdconf,
			pdconf, context, &appOptionsContainer, &locOptionsContainer);
		Json::Value &optionContainer = findOrCreateOptionContainer(*appOptionsContainer,
			"PassengerUser",
			sizeof("PassengerUser") - 1);
		Json::Value &hierarchyMember = addOptionContainerHierarchyMember(optionContainer,
			pdconf->mUserSourceFile,
			pdconf->mUserSourceLine);
		hierarchyMember["value"] = Json::Value(
			pdconf->mUser.data(),
			pdconf->mUser.data() + pdconf->mUser.size());
	}
}



} // namespace Apache2Module
} // namespace Passenger
