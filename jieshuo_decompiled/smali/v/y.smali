.class public final Lv/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lw/c;)Lv/a;
    .locals 3

    invoke-virtual {p0}, Lw/c;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no zero for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lv/m;->a:Lv/m;

    return-object p0

    :pswitch_1
    sget-object p0, Lv/u;->b:Lv/u;

    return-object p0

    :pswitch_2
    sget-object p0, Lv/q;->b:Lv/q;

    return-object p0

    :pswitch_3
    sget-object p0, Lv/l;->d:Lv/l;

    return-object p0

    :pswitch_4
    sget-object p0, Lv/k;->b:Lv/k;

    return-object p0

    :pswitch_5
    sget-object p0, Lv/h;->b:Lv/h;

    return-object p0

    :pswitch_6
    sget-object p0, Lv/g;->b:Lv/g;

    return-object p0

    :pswitch_7
    sget-object p0, Lv/f;->b:Lv/f;

    return-object p0

    :pswitch_8
    sget-object p0, Lv/e;->b:Lv/e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
