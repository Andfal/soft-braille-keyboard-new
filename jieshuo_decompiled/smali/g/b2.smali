.class public Lg/b2;
.super Lg/b;
.source "SourceFile"


# static fields
.field public static final b:Lg/b2;

.field public static final c:Lg/b2;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/b2;

    invoke-direct {v0}, Lg/b2;-><init>()V

    sput-object v0, Lg/b2;->b:Lg/b2;

    new-instance v0, Lg/b2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/b2;-><init>(Z)V

    sput-object v0, Lg/b2;->c:Lg/b2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/b2;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lg/b;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/b2;->a:Z

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected g(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lg/b2;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lg/b2;->h(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x0

    if-nez p4, :cond_1

    return-object p2

    :cond_1
    instance-of p3, p4, Ljava/util/Date;

    if-eqz p3, :cond_2

    new-instance p1, Ljava/sql/Date;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    :cond_2
    instance-of p3, p4, Ljava/math/BigDecimal;

    if-eqz p3, :cond_3

    new-instance p1, Ljava/sql/Date;

    check-cast p4, Ljava/math/BigDecimal;

    invoke-static {p4}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    :cond_3
    instance-of p3, p4, Ljava/lang/Number;

    if-eqz p3, :cond_4

    new-instance p1, Ljava/sql/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Date;-><init>(J)V

    :goto_0
    return-object p1

    :cond_4
    instance-of p3, p4, Ljava/lang/String;

    if-eqz p3, :cond_7

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_5

    return-object p2

    :cond_5
    new-instance p2, Lf/f;

    invoke-direct {p2, p4}, Lf/f;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lf/f;->c1()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lf/a;->l()Ljava/text/DateFormat;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    new-instance p3, Ljava/sql/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lf/d;->close()V

    return-object p3

    :catch_0
    :try_start_2
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {p2}, Lf/d;->close()V

    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, p3, p4}, Ljava/sql/Date;-><init>(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lf/d;->close()V

    throw p1

    :cond_7
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "parse error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected h(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    instance-of p3, p4, Ljava/util/Date;

    if-eqz p3, :cond_1

    new-instance p1, Ljava/sql/Timestamp;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :cond_1
    instance-of p3, p4, Ljava/math/BigDecimal;

    if-eqz p3, :cond_2

    new-instance p1, Ljava/sql/Timestamp;

    check-cast p4, Ljava/math/BigDecimal;

    invoke-static {p4}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :cond_2
    instance-of p3, p4, Ljava/lang/Number;

    if-eqz p3, :cond_3

    new-instance p1, Ljava/sql/Timestamp;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :cond_3
    instance-of p3, p4, Ljava/lang/String;

    if-eqz p3, :cond_7

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    return-object p2

    :cond_4
    new-instance p2, Lf/f;

    invoke-direct {p2, p4}, Lf/f;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x13

    if-le p3, v0, :cond_5

    const/4 p3, 0x4

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x2d

    if-ne p3, v1, :cond_5

    const/4 p3, 0x7

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v1, :cond_5

    const/16 p3, 0xa

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x20

    if-ne p3, v1, :cond_5

    const/16 p3, 0xd

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x3a

    if-ne p3, v1, :cond_5

    const/16 p3, 0x10

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v1, :cond_5

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x2e

    if-ne p3, v0, :cond_5

    invoke-virtual {p1}, Lf/a;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    sget-object v0, Lc/a;->e:Ljava/lang/String;

    if-ne p3, v0, :cond_5

    invoke-static {p4}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lf/d;->close()V

    return-object p1

    :cond_5
    const/4 p3, 0x0

    :try_start_1
    invoke-virtual {p2, p3}, Lf/f;->d1(Z)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lf/a;->l()Ljava/text/DateFormat;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    new-instance p3, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Lf/d;->close()V

    return-object p3

    :catch_0
    :try_start_3
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p2}, Lf/d;->close()V

    new-instance p1, Ljava/sql/Timestamp;

    invoke-direct {p1, p3, p4}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lf/d;->close()V

    throw p1

    :cond_7
    new-instance p1, Lc/d;

    const-string p2, "parse error"

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method
