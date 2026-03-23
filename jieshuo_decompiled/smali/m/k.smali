.class final Lm/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/Object;)Lv/x;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lv/m;->a:Lv/m;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lv/e;->k(Z)Lv/e;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lv/f;->j(B)Lv/f;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lv/g;->j(C)Lv/g;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lv/h;->j(J)Lv/h;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0}, Lv/k;->j(I)Lv/k;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lv/l;->k(I)Lv/l;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lv/q;->j(J)Lv/q;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lv/u;->j(S)Lv/u;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance v0, Lv/v;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lv/v;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_9
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    new-instance v0, Lv/w;

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lm/q;->a(Ljava/lang/Class;)Lm/q;

    move-result-object p0

    iget-object p0, p0, Lm/q;->b:Lw/c;

    invoke-direct {v0, p0}, Lv/w;-><init>(Lw/c;)V

    return-object v0

    :cond_a
    instance-of v0, p0, Lm/q;

    if-eqz v0, :cond_b

    new-instance v0, Lv/w;

    check-cast p0, Lm/q;

    iget-object p0, p0, Lm/q;->b:Lw/c;

    invoke-direct {v0, p0}, Lv/w;-><init>(Lw/c;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
