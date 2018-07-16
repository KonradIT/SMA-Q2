.class public Lcom/igexin/download/DownloadInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field a:J

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCreateMod:J

.field public mCurrentBytes:I

.field public mData1:Ljava/lang/String;

.field public mData10:J

.field public mData2:Ljava/lang/String;

.field public mData3:Ljava/lang/String;

.field public mData4:Ljava/lang/String;

.field public mData5:Ljava/lang/String;

.field public mData6:Ljava/lang/String;

.field public mData7:Ljava/lang/String;

.field public mData8:Ljava/lang/String;

.field public mData9:Ljava/lang/String;

.field public mDestination:I

.field public mDownSpeed:J

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public volatile mHasActiveThread:Z

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mIsWebIcon:I

.field public mLastBytes:I

.field public mLastMod:J

.field public mMediaScanned:Z

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNotice:Z

.field public mNotify:Z

.field public mNumFailed:I

.field public mRedirectCount:I

.field public mReferer:Ljava/lang/String;

.field public mRetryAfter:I

.field public mStatus:I

.field public mTotalBytes:I

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    iput-boolean v0, p0, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    iput p1, p0, Lcom/igexin/download/DownloadInfo;->mId:I

    iput-object p2, p0, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/igexin/download/DownloadInfo;->mNoIntegrity:Z

    iput-object p4, p0, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    iput-object p5, p0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object p6, p0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    iput p7, p0, Lcom/igexin/download/DownloadInfo;->mDestination:I

    iput p8, p0, Lcom/igexin/download/DownloadInfo;->mVisibility:I

    iput p9, p0, Lcom/igexin/download/DownloadInfo;->mControl:I

    iput p10, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    iput p11, p0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    move/from16 v0, p12

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mRetryAfter:I

    move/from16 v0, p13

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mRedirectCount:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mLastMod:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mCreateMod:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mExtras:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;

    move/from16 v0, p22

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    move/from16 v0, p23

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;

    sget-object v2, Lcom/igexin/download/h;->a:Ljava/util/Random;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Lcom/igexin/download/DownloadInfo;->mFuzz:I

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData1:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData2:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData3:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData4:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData5:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData6:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData7:Ljava/lang/String;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData8:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mData9:Ljava/lang/String;

    move-wide/from16 v0, p34

    iput-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mData10:J

    move/from16 v0, p36

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mIsWebIcon:I

    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/igexin/download/DownloadInfo;->mMediaScanned:Z

    return-void
.end method


# virtual methods
.method public canUseNetwork(ZZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mDestination:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public clone()Lcom/igexin/download/DownloadInfo;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/download/DownloadInfo;->clone()Lcom/igexin/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/igexin/download/DownloadInfo;)V
    .locals 1

    iget v0, p1, Lcom/igexin/download/DownloadInfo;->mControl:I

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mControl:I

    iget v0, p1, Lcom/igexin/download/DownloadInfo;->mStatus:I

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    iget v0, p1, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    iget v0, p1, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iget v0, p1, Lcom/igexin/download/DownloadInfo;->mLastBytes:I

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mLastBytes:I

    iget-boolean v0, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    iput-boolean v0, p0, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    iget-object v0, p0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public hasCompletionNotification()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v2}, Lcom/igexin/download/Downloads;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mVisibility:I

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isReadyToRestart(J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mControl:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xc1

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v2}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/igexin/download/DownloadInfo;->restartTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isReadyToStart(J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mControl:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/igexin/download/DownloadInfo;->restartTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public refreshSpeed()V
    .locals 6

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v0}, Lcom/igexin/download/Downloads;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v1, 0xc0

    if-eq v0, v1, :cond_2

    :cond_0
    iput-wide v4, p0, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/download/DownloadInfo;->a:J

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/igexin/download/DownloadInfo;->a:J

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iget v3, p0, Lcom/igexin/download/DownloadInfo;->mLastBytes:I

    if-ne v2, v3, :cond_4

    const-wide/16 v2, 0x5dc

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iput-wide v4, p0, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/igexin/download/DownloadInfo;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iget v3, p0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iget v4, p0, Lcom/igexin/download/DownloadInfo;->mLastBytes:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long v0, v2, v0

    iput-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    :goto_1
    iget v0, p0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iput v0, p0, Lcom/igexin/download/DownloadInfo;->mLastBytes:I

    goto :goto_0

    :cond_5
    iput-wide v4, p0, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    goto :goto_1
.end method

.method public restartTime()J
    .locals 5

    iget v0, p0, Lcom/igexin/download/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/igexin/download/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/igexin/download/DownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method
