.class public Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;
.super Ljava/lang/Object;
.source "EsptouchTaskParameter.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;


# static fields
.field private static _datagramCount:I


# instance fields
.field private mEsptouchResultIpLen:I

.field private mEsptouchResultMacLen:I

.field private mEsptouchResultOneLen:I

.field private mEsptouchResultTotalLen:I

.field private mExpectTaskResultCount:I

.field private mIntervalDataCodeMillisecond:J

.field private mIntervalGuideCodeMillisecond:J

.field private mPortListening:I

.field private mTargetPort:I

.field private mThresholdSucBroadcastCount:I

.field private mTimeoutDataCodeMillisecond:J

.field private mTimeoutGuideCodeMillisecond:J

.field private mTotalRepeatTime:I

.field private mWaitUdpReceivingMilliseond:I

.field private mWaitUdpSendingMillisecond:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->_datagramCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v0, 0xa

    const/4 v2, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mIntervalGuideCodeMillisecond:J

    .line 24
    iput-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mIntervalDataCodeMillisecond:J

    .line 25
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTimeoutGuideCodeMillisecond:J

    .line 26
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTimeoutDataCodeMillisecond:J

    .line 27
    iput v2, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTotalRepeatTime:I

    .line 28
    iput v2, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultOneLen:I

    .line 29
    const/4 v0, 0x6

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultMacLen:I

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultIpLen:I

    .line 31
    const/16 v0, 0xb

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultTotalLen:I

    .line 32
    const/16 v0, 0x475a

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mPortListening:I

    .line 33
    const/16 v0, 0x1b59

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTargetPort:I

    .line 34
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpReceivingMilliseond:I

    .line 35
    const v0, 0xafc8

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpSendingMillisecond:I

    .line 36
    iput v2, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mThresholdSucBroadcastCount:I

    .line 37
    iput v2, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mExpectTaskResultCount:I

    .line 38
    return-void
.end method

.method private static __getNextDatagramCount()I
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->_datagramCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->_datagramCount:I

    rem-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getEsptouchResultIpLen()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultIpLen:I

    return v0
.end method

.method public getEsptouchResultMacLen()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultMacLen:I

    return v0
.end method

.method public getEsptouchResultOneLen()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultOneLen:I

    return v0
.end method

.method public getEsptouchResultTotalLen()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mEsptouchResultTotalLen:I

    return v0
.end method

.method public getExpectTaskResultCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mExpectTaskResultCount:I

    return v0
.end method

.method public getIntervalDataCodeMillisecond()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mIntervalDataCodeMillisecond:J

    return-wide v0
.end method

.method public getIntervalGuideCodeMillisecond()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mIntervalGuideCodeMillisecond:J

    return-wide v0
.end method

.method public getPortListening()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mPortListening:I

    return v0
.end method

.method public getTargetHostname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->__getNextDatagramCount()I

    move-result v0

    .line 104
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "234."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTargetPort()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTargetPort:I

    return v0
.end method

.method public getThresholdSucBroadcastCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mThresholdSucBroadcastCount:I

    return v0
.end method

.method public getTimeoutDataCodeMillisecond()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTimeoutDataCodeMillisecond:J

    return-wide v0
.end method

.method public getTimeoutGuideCodeMillisecond()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTimeoutGuideCodeMillisecond:J

    return-wide v0
.end method

.method public getTimeoutTotalCodeMillisecond()J
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTimeoutGuideCodeMillisecond:J

    iget-wide v2, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTimeoutDataCodeMillisecond:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalRepeatTime()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mTotalRepeatTime:I

    return v0
.end method

.method public getWaitUdpReceivingMillisecond()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpReceivingMilliseond:I

    return v0
.end method

.method public getWaitUdpSendingMillisecond()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpSendingMillisecond:I

    return v0
.end method

.method public getWaitUdpTotalMillisecond()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpReceivingMilliseond:I

    iget v1, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpSendingMillisecond:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setExpectTaskResultCount(I)V
    .locals 0
    .param p1, "expectTaskResultCount"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mExpectTaskResultCount:I

    .line 154
    return-void
.end method

.method public setWaitUdpTotalMillisecond(I)V
    .locals 6
    .param p1, "waitUdpTotalMillisecond"    # I

    .prologue
    .line 134
    int-to-long v0, p1

    iget v2, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpReceivingMilliseond:I

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->getTimeoutTotalCodeMillisecond()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "waitUdpTotalMillisecod is invalid, it is less than mWaitUdpReceivingMilliseond + getTimeoutTotalCodeMillisecond()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpReceivingMilliseond:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;->mWaitUdpSendingMillisecond:I

    .line 144
    return-void
.end method
