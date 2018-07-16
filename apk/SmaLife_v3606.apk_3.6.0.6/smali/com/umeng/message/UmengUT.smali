.class public Lcom/umeng/message/UmengUT;
.super Ljava/lang/Object;
.source "UmengUT.java"

# interfaces
.implements Lorg/android/agoo/ut/UT;


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/UmengUT;->a:Z

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 191
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    if-eqz p1, :cond_3

    array-length v1, p1

    if-lez v1, :cond_3

    move v1, v0

    .line 197
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 198
    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    if-eqz v1, :cond_1

    .line 200
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const/4 v1, 0x1

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    if-eqz p0, :cond_9

    .line 165
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 167
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_4
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_5
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 180
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :cond_7
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_8

    .line 182
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 184
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :cond_9
    const-string v0, ""

    goto/16 :goto_0
.end method


# virtual methods
.method public commitEvent(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 96
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/ay;

    const-string v1, "Agoo"

    invoke-static {p2}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/proguard/ay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v1

    const-string v2, "agoo"

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/m;->b(Ljava/lang/String;)Lcom/umeng/message/proguard/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/ay;

    const-string v1, "Agoo"

    invoke-static {p2}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/proguard/ay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v1

    const-string v2, "agoo"

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/m;->b(Ljava/lang/String;)Lcom/umeng/message/proguard/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/ay;

    const-string v1, "Agoo"

    invoke-static {p2}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/proguard/ay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v1

    const-string v2, "agoo"

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/m;->b(Ljava/lang/String;)Lcom/umeng/message/proguard/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 146
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/ay;

    const-string v1, "Agoo"

    invoke-static {p2}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Lcom/umeng/message/UmengUT;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/proguard/ay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    const-string v1, "_field_args"

    invoke-direct {p0, p5}, Lcom/umeng/message/UmengUT;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/proguard/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 148
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v1

    const-string v2, "agoo"

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/m;->b(Ljava/lang/String;)Lcom/umeng/message/proguard/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUtdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaughException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/m;->a(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/umeng/message/proguard/m;->c(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/m;->c()V

    .line 44
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string p3, "test"

    .line 47
    :cond_0
    invoke-static {p1}, Lorg/android/Config;->isAgooSoSecurityMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v0

    new-instance v1, Lcom/umeng/message/proguard/ac;

    invoke-direct {v1, p2}, Lcom/umeng/message/proguard/ac;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/m;->a(Lcom/umeng/message/proguard/aa;)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v0

    new-instance v1, Lcom/umeng/message/proguard/ab;

    invoke-direct {v1, p2, p3}, Lcom/umeng/message/proguard/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/m;->a(Lcom/umeng/message/proguard/aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
