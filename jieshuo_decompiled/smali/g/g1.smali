.class public Lg/g1;
.super Lg/e;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lh/w;


# static fields
.field public static final a:Lg/g1;

.field private static final b:Ljava/time/format/DateTimeFormatter;

.field private static final c:Ljava/time/format/DateTimeFormatter;

.field private static final d:Ljava/time/format/DateTimeFormatter;

.field private static final e:Ljava/time/format/DateTimeFormatter;

.field private static final f:Ljava/time/format/DateTimeFormatter;

.field private static final g:Ljava/time/format/DateTimeFormatter;

.field private static final h:Ljava/time/format/DateTimeFormatter;

.field private static final i:Ljava/time/format/DateTimeFormatter;

.field private static final j:Ljava/time/format/DateTimeFormatter;

.field private static final k:Ljava/time/format/DateTimeFormatter;

.field private static final l:Ljava/time/format/DateTimeFormatter;

.field private static final m:Ljava/time/format/DateTimeFormatter;

.field private static final n:Ljava/time/format/DateTimeFormatter;

.field private static final o:Ljava/time/format/DateTimeFormatter;

.field private static final p:Ljava/time/format/DateTimeFormatter;

.field private static final q:Ljava/time/format/DateTimeFormatter;

.field private static final r:Ljava/time/format/DateTimeFormatter;

.field private static final s:Ljava/time/format/DateTimeFormatter;

.field private static final t:Ljava/time/format/DateTimeFormatter;

.field private static final u:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/g1;

    invoke-direct {v0}, Lg/g1;-><init>()V

    sput-object v0, Lg/g1;->a:Lg/g1;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->b:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->c:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->d:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->e:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->f:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->g:Ljava/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->h:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->i:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->j:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->k:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyyMMdd"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->l:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->m:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->n:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->o:Ljava/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->p:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->q:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->r:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy"

    invoke-static {v1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lg/g1;->s:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lg/b0;->a()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lg/m0;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lg/g1;->t:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lg/g1;->u:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/e;-><init>()V

    return-void
.end method

.method private j(Lh/f1;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "unixtime"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-static {p2}, Lg/a1;->a(Ljava/time/chrono/ChronoZonedDateTime;)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lh/f1;->L(I)V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/time/LocalDateTime;

    sget-object p3, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {p3}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p3

    invoke-static {p2, p3}, Lg/c1;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lh/f1;->L(I)V

    return-void

    :cond_1
    const-string v0, "millis"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-static {v0}, Lg/d1;->a(Ljava/time/chrono/ChronoZonedDateTime;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/time/LocalDateTime;

    sget-object v1, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {v1}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lg/c1;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {v0}, Lg/e1;->a(Ljava/time/Instant;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lh/f1;->N(J)V

    return-void

    :cond_4
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-ne p3, v0, :cond_5

    sget-object p3, Lg/g1;->u:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    :goto_1
    invoke-static {p3, p2}, Lg/f1;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/f1;->S(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2

    iget-object p3, p1, Lh/k0;->k:Lh/f1;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lh/f1;->O()V

    goto :goto_1

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    :cond_1
    const-class v0, Ljava/time/LocalDateTime;

    if-ne p4, v0, :cond_6

    sget-object p4, Lh/g1;->g:Lh/g1;

    invoke-virtual {p4}, Lh/g1;->a()I

    move-result v0

    check-cast p2, Ljava/time/LocalDateTime;

    invoke-virtual {p1}, Lh/k0;->u()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    and-int/2addr p5, v0

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-nez p5, :cond_5

    invoke-virtual {p1, p4}, Lh/k0;->y(Lh/g1;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lg/x0;->a(Ljava/time/LocalDateTime;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const p4, 0xf4240

    rem-int/2addr p1, p4

    if-nez p1, :cond_4

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_0

    :cond_4
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    :cond_5
    :goto_0
    invoke-direct {p0, p3, p2, v1}, Lg/g1;->j(Lh/f1;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lh/f1;->S(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public e(Lh/k0;Ljava/lang/Object;Lh/l;)V
    .locals 0

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    invoke-virtual {p3}, Lh/l;->b()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, p1, p2, p3}, Lg/g1;->j(Lh/f1;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    iget-object p3, p1, Lf/a;->f:Lf/c;

    invoke-interface {p3}, Lf/c;->M()I

    move-result p5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p5, v1, :cond_0

    invoke-interface {p3}, Lf/c;->nextToken()V

    return-object v0

    :cond_0
    invoke-interface {p3}, Lf/c;->M()I

    move-result p5

    const/4 v2, 0x4

    if-ne p5, v2, :cond_1c

    invoke-interface {p3}, Lf/c;->H()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3}, Lf/c;->nextToken()V

    if-eqz p4, :cond_2

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lg/g1;->b:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    const-string v2, ""

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    const-class v2, Ljava/time/LocalDateTime;

    if-ne p2, v2, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p5, p3}, Lg/g1;->g(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, p5, p4, p3}, Lg/g1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {}, Lg/z;->a()Ljava/time/LocalTime;

    move-result-object p2

    invoke-static {p1, p2}, Lg/j0;->a(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    const-class v2, Ljava/time/LocalDate;

    const/16 v3, 0x17

    if-ne p2, v2, :cond_8

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_7

    invoke-static {p5}, Lg/l0;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lg/n0;->a(Ljava/time/LocalDateTime;)I

    move-result p2

    invoke-static {p1}, Lg/o0;->a(Ljava/time/LocalDateTime;)I

    move-result p3

    invoke-static {p1}, Lg/p0;->a(Ljava/time/LocalDateTime;)I

    move-result p1

    invoke-static {p2, p3, p1}, Lg/q0;->a(III)Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p5, p4, p3}, Lg/g1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_8
    const-class p4, Ljava/time/LocalTime;

    const/16 v2, 0x39

    const/16 v4, 0x30

    const/16 v5, 0x13

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p2, p4, :cond_e

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_9

    invoke-static {p5}, Lg/l0;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lg/r0;->a(Ljava/time/LocalDateTime;)I

    move-result p2

    invoke-static {p1}, Lg/r;->a(Ljava/time/LocalDateTime;)I

    move-result p3

    invoke-static {p1}, Lg/s;->a(Ljava/time/LocalDateTime;)I

    move-result p4

    invoke-static {p1}, Lg/x0;->a(Ljava/time/LocalDateTime;)I

    move-result p1

    invoke-static {p2, p3, p4, p1}, Lg/t;->a(IIII)Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_c

    invoke-virtual {p5, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_b

    if-le p2, v2, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    const/4 v6, 0x0

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_d

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v5, :cond_d

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {p2}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lg/v;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lg/w;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_6

    :cond_d
    invoke-static {p5}, Lg/x;->a(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object p1

    :goto_6
    return-object p1

    :cond_e
    const-class p4, Ljava/time/ZonedDateTime;

    if-ne p2, p4, :cond_11

    sget-object p2, Lg/g1;->b:Ljava/time/format/DateTimeFormatter;

    if-ne p3, p2, :cond_f

    sget-object p3, Lg/g1;->t:Ljava/time/format/DateTimeFormatter;

    :cond_f
    if-nez p3, :cond_10

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v5, :cond_10

    new-instance p2, Lf/f;

    invoke-direct {p2, p5}, Lf/f;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lf/a;->f:Lf/c;

    invoke-interface {p1}, Lf/c;->I()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Lf/d;->U0(Ljava/util/TimeZone;)V

    invoke-virtual {p2, v7}, Lf/f;->d1(Z)Z

    move-result p4

    if-eqz p4, :cond_10

    invoke-virtual {p2}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lg/y;->a(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p2

    invoke-static {p1}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Lg/a0;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-virtual {p0, p5, p3}, Lg/g1;->i(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_11
    const-class p1, Ljava/time/OffsetDateTime;

    if-ne p2, p1, :cond_12

    invoke-static {p5}, Lg/c0;->a(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    :cond_12
    const-class p1, Ljava/time/OffsetTime;

    if-ne p2, p1, :cond_13

    invoke-static {p5}, Lg/d0;->a(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_13
    const-class p1, Ljava/time/ZoneId;

    if-ne p2, p1, :cond_14

    invoke-static {p5}, Lg/e0;->a(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    return-object p1

    :cond_14
    const-class p1, Ljava/time/Period;

    if-ne p2, p1, :cond_15

    invoke-static {p5}, Lg/f0;->a(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p1

    return-object p1

    :cond_15
    const-class p1, Ljava/time/Duration;

    if-ne p2, p1, :cond_16

    invoke-static {p5}, Lg/g0;->a(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    :cond_16
    const-class p1, Ljava/time/Instant;

    if-ne p2, p1, :cond_1b

    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_19

    invoke-virtual {p5, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_18

    if-le p2, v2, :cond_17

    goto :goto_8

    :cond_17
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_18
    :goto_8
    const/4 v6, 0x0

    :cond_19
    if-eqz v6, :cond_1a

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_1a

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v5, :cond_1a

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-static {p5}, Lg/h0;->a(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_1b
    return-object v0

    :cond_1c
    invoke-interface {p3}, Lf/c;->M()I

    move-result p1

    const/4 p5, 0x2

    if-ne p1, p5, :cond_24

    invoke-interface {p3}, Lf/c;->e()J

    move-result-wide v0

    invoke-interface {p3}, Lf/c;->nextToken()V

    const-string p1, "unixtime"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-wide/16 p3, 0x3e8

    mul-long v0, v0, p3

    goto :goto_9

    :cond_1d
    const-string p1, "yyyyMMddHHmmss"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const-wide p3, 0x2540be400L

    div-long p3, v0, p3

    long-to-int v2, p3

    const-wide/32 p3, 0x5f5e100

    div-long p3, v0, p3

    const-wide/16 v3, 0x64

    rem-long/2addr p3, v3

    long-to-int p1, p3

    const-wide/32 p3, 0xf4240

    div-long p3, v0, p3

    rem-long/2addr p3, v3

    long-to-int p4, p3

    const-wide/16 v5, 0x2710

    div-long v5, v0, v5

    rem-long/2addr v5, v3

    long-to-int v5, v5

    div-long v6, v0, v3

    rem-long/2addr v6, v3

    long-to-int v6, v6

    rem-long v3, v0, v3

    long-to-int v7, v3

    const-class p3, Ljava/time/LocalDateTime;

    if-ne p2, p3, :cond_1e

    move v3, p1

    move v4, p4

    invoke-static/range {v2 .. v7}, Lg/i0;->a(IIIIII)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1e
    :goto_9
    const-class p1, Ljava/time/LocalDateTime;

    if-ne p2, p1, :cond_1f

    invoke-static {v0, v1}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {p2}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lg/v;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1f
    const-class p1, Ljava/time/LocalDate;

    if-ne p2, p1, :cond_20

    invoke-static {v0, v1}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {p2}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lg/v;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lg/k0;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_20
    const-class p1, Ljava/time/LocalTime;

    if-ne p2, p1, :cond_21

    invoke-static {v0, v1}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {p2}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lg/v;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lg/w;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    :cond_21
    const-class p1, Ljava/time/ZonedDateTime;

    if-ne p2, p1, :cond_22

    invoke-static {v0, v1}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {p2}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lg/a0;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_22
    const-class p1, Ljava/time/Instant;

    if-ne p2, p1, :cond_23

    invoke-static {v0, v1}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected g(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 16

    move-object/from16 v0, p1

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x30

    if-nez p2, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    const/16 v7, 0x10

    const/16 v8, 0xd

    const/4 v9, 0x7

    const/16 v10, 0x2e

    const/4 v11, 0x4

    const/16 v12, 0x3a

    const/16 v13, 0xa

    const/16 v14, 0x2d

    if-ne v5, v1, :cond_9

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v8, v12, :cond_a

    if-ne v7, v12, :cond_a

    if-ne v5, v14, :cond_1

    if-ne v9, v14, :cond_1

    const/16 v5, 0x54

    if-ne v15, v5, :cond_0

    invoke-static {}, Lg/s0;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    goto/16 :goto_2

    :cond_0
    if-ne v15, v6, :cond_a

    sget-object v5, Lg/g1;->b:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_1
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_2

    if-ne v9, v6, :cond_2

    sget-object v5, Lg/g1;->d:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v15, 0x5

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v9, v6, :cond_7

    if-ne v15, v6, :cond_7

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v5, v4

    add-int/2addr v12, v5

    const/16 v5, 0xc

    if-le v7, v5, :cond_4

    :cond_3
    :goto_0
    sget-object v5, Lg/g1;->i:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_4
    if-le v12, v5, :cond_5

    :goto_1
    sget-object v5, Lg/g1;->h:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "AU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_0

    :cond_7
    if-ne v9, v10, :cond_8

    if-ne v15, v10, :cond_8

    sget-object v5, Lg/g1;->j:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_8
    if-ne v9, v14, :cond_a

    if-ne v15, v14, :cond_a

    sget-object v5, Lg/g1;->k:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v15, 0x17

    if-ne v5, v15, :cond_a

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v8, v12, :cond_a

    if-ne v7, v12, :cond_a

    if-ne v5, v14, :cond_a

    if-ne v9, v14, :cond_a

    if-ne v13, v6, :cond_a

    if-ne v15, v10, :cond_a

    sget-object v5, Lg/g1;->c:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_a
    move-object/from16 v5, p2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x11

    if-lt v6, v7, :cond_e

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5e74

    if-ne v6, v7, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x79d2

    if-ne v5, v6, :cond_b

    sget-object v5, Lg/g1;->f:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    :cond_b
    sget-object v5, Lg/g1;->e:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    :cond_c
    const v7, 0xb144

    if-ne v6, v7, :cond_e

    sget-object v5, Lg/g1;->g:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    :cond_d
    move-object/from16 v5, p2

    :cond_e
    :goto_3
    if-nez v5, :cond_13

    new-instance v6, Lf/f;

    invoke-direct {v6, v0}, Lf/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lf/f;->d1(Z)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v6}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lg/y0;->a(Ljava/util/Calendar;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Lg/b0;->a()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lg/v;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v6, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v4, :cond_11

    const/16 v8, 0x39

    if-le v7, v8, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    const/4 v2, 0x0

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_13

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {v1}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lg/v;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_13
    if-nez v5, :cond_14

    invoke-static/range {p1 .. p1}, Lg/l0;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_6

    :cond_14
    invoke-static {v0, v5}, Lg/z0;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 12

    if-nez p3, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    sget-object p3, Lg/g1;->l:Ljava/time/format/DateTimeFormatter;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/16 v5, 0x30

    if-ne p2, v4, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne p2, v7, :cond_1

    if-ne v6, v7, :cond_1

    sget-object p3, Lg/g1;->m:Ljava/time/format/DateTimeFormatter;

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v9, v7, :cond_6

    if-ne v11, v7, :cond_6

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    sub-int/2addr v10, v5

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr p2, v5

    add-int/2addr v10, p2

    const/16 p2, 0xc

    if-le v6, p2, :cond_3

    :cond_2
    :goto_0
    sget-object p2, Lg/g1;->q:Ljava/time/format/DateTimeFormatter;

    :goto_1
    move-object p3, p2

    goto :goto_3

    :cond_3
    if-le v10, p2, :cond_4

    :goto_2
    sget-object p2, Lg/g1;->p:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v4, "US"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "BR"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "AU"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_6
    const/16 p2, 0x2e

    if-ne v9, p2, :cond_7

    if-ne v11, p2, :cond_7

    sget-object p3, Lg/g1;->r:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    :cond_7
    const/16 p2, 0x2d

    if-ne v9, p2, :cond_8

    if-ne v11, p2, :cond_8

    sget-object p3, Lg/g1;->s:Ljava/time/format/DateTimeFormatter;

    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v4, 0x9

    if-lt p2, v4, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x5e74

    if-ne p2, v1, :cond_9

    sget-object p2, Lg/g1;->n:Ljava/time/format/DateTimeFormatter;

    :goto_4
    move-object p3, p2

    goto :goto_5

    :cond_9
    const v1, 0xb144

    if-ne p2, v1, :cond_a

    sget-object p2, Lg/g1;->o:Ljava/time/format/DateTimeFormatter;

    goto :goto_4

    :cond_a
    :goto_5
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_d

    const/16 v4, 0x39

    if-le v1, v4, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x1

    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x13

    if-ge p2, v0, :cond_e

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {p2}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lg/v;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lg/k0;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_e
    if-nez p3, :cond_f

    invoke-static {p1}, Lg/v0;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_8

    :cond_f
    invoke-static {p1, p3}, Lg/w0;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    :goto_8
    return-object p1
.end method

.method protected i(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 15

    move-object/from16 v0, p1

    if-nez p2, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x30

    if-ne v1, v3, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-ne v10, v12, :cond_9

    if-ne v11, v12, :cond_9

    const/16 v10, 0x2d

    if-ne v1, v10, :cond_1

    if-ne v7, v10, :cond_1

    const/16 v1, 0x54

    if-ne v9, v1, :cond_0

    invoke-static {}, Lg/s0;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x20

    if-ne v9, v1, :cond_9

    sget-object v1, Lg/g1;->b:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v7, v9, :cond_2

    sget-object v1, Lg/g1;->d:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v12, v9, :cond_7

    if-ne v14, v9, :cond_7

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v11, v6

    add-int/2addr v7, v11

    sub-int/2addr v13, v6

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v1, v6

    add-int/2addr v13, v1

    const/16 v1, 0xc

    if-le v7, v1, :cond_4

    :cond_3
    :goto_0
    sget-object v1, Lg/g1;->i:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_4
    if-le v13, v1, :cond_5

    :goto_1
    sget-object v1, Lg/g1;->h:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v7, "US"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    const-string v7, "BR"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "AU"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_7
    const/16 v1, 0x2e

    if-ne v12, v1, :cond_8

    if-ne v14, v1, :cond_8

    sget-object v1, Lg/g1;->j:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_8
    if-ne v12, v10, :cond_9

    if-ne v14, v10, :cond_9

    sget-object v1, Lg/g1;->k:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_9
    move-object/from16 v1, p2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x11

    if-lt v7, v8, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x5e74

    if-ne v2, v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79d2

    if-ne v1, v2, :cond_a

    sget-object v1, Lg/g1;->f:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    :cond_a
    sget-object v1, Lg/g1;->e:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    :cond_b
    const v7, 0xb144

    if-ne v2, v7, :cond_c

    sget-object v1, Lg/g1;->g:Ljava/time/format/DateTimeFormatter;

    :cond_c
    :goto_3
    const/4 v2, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_f

    const/16 v8, 0x39

    if-le v7, v8, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    const/4 v4, 0x1

    :cond_f
    :goto_5
    if-eqz v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_11

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lg/u;->a(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lc/a;->a:Ljava/util/TimeZone;

    invoke-static {v1}, Lg/b1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lg/a0;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_10
    move-object/from16 v1, p2

    :cond_11
    if-nez v1, :cond_12

    invoke-static/range {p1 .. p1}, Lg/t0;->a(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_6

    :cond_12
    invoke-static {v0, v1}, Lg/u0;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_6
    return-object v0
.end method
