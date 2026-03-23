.class Lcom/unisound/sdk/ay;
.super Lcom/unisound/common/u;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/unisound/sdk/au;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ay;->a:Lcom/unisound/sdk/au;

    invoke-direct {p0}, Lcom/unisound/common/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/au;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ay;->a:Lcom/unisound/sdk/au;

    invoke-direct {p0, p2}, Lcom/unisound/common/u;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Lcom/unisound/sdk/ay;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->d(Lcom/unisound/sdk/au;)Lcom/unisound/client/SpeechSynthesizerListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x72

    if-eq v2, v3, :cond_2

    const/16 v3, 0xe1

    const/16 v4, 0x8fd

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    return v1

    :cond_1
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v4, p1}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x840

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x83f

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x83d

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x83c

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x83b

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x83a

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x839

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x838

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x837

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x836

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x835

    :goto_0
    invoke-interface {v0, p1}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x842

    goto :goto_0

    :goto_1
    :pswitch_c
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessage(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method
