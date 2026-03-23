.class public Lcom/vivo/speechsdk/module/api/net/NetConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE_CANCEL:I = 0x3eb

.field public static final CLOSE_DESTORY:I = 0x3ea

.field public static final CLOSE_SESSION_END:I = 0x3e9

.field public static final NET_QUALITY_CONN_ERROR:I = 0x66

.field public static final NET_QUALITY_CONN_TIME_OUT:I = 0x64

.field public static final NET_QUALITY_LOW_SIGNAL:I = 0x67

.field public static final NET_QUALITY_PING_PONG:I = 0x65

.field public static final RESP_TYPE_BYTESTREAM:I = 0x3ed

.field public static final RESP_TYPE_STRING:I = 0x3ec


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reason(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "signal pool"

    return-object p0

    :pswitch_1
    const-string p0, "connect failed"

    return-object p0

    :pswitch_2
    const-string p0, "ping/pong delay"

    return-object p0

    :pswitch_3
    const-string p0, "connect time out"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
