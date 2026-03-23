.class public Lf/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i$a;
    }
.end annotation


# static fields
.field private static A:Z

.field private static B:Z

.field private static C:Z

.field public static final s:[Ljava/lang/String;

.field public static final t:[Ljava/lang/String;

.field private static final u:[Ljava/lang/String;

.field public static final v:Z

.field public static final w:Z

.field private static final x:[J

.field public static y:Lf/i;

.field private static z:Z


# instance fields
.field private final a:Ll/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/f<",
            "Ljava/lang/reflect/Type;",
            "Lg/j1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ll/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/f<",
            "Ljava/lang/reflect/Type;",
            "Ll/f<",
            "Ljava/lang/reflect/Type;",
            "Lg/j1;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:Z

.field public final e:Lf/j;

.field public f:Lc/l;

.field protected g:Ljava/lang/ClassLoader;

.field protected h:Lg/a;

.field private i:Z

.field private j:[J

.field private k:[J

.field private l:[J

.field public final m:Z

.field private n:Z

.field public o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "fastjson.parser.deny.internal"

    invoke-static {v0}, Ll/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/i;->y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/i;->s:[Ljava/lang/String;

    const-string v0, "fastjson.parser.deny"

    invoke-static {v0}, Ll/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/i;->y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/i;->t:[Ljava/lang/String;

    const-string v0, "fastjson.parser.autoTypeSupport"

    invoke-static {v0}, Ll/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lf/i;->v:Z

    const-string v0, "fastjson.parser.safeMode"

    invoke-static {v0}, Ll/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lf/i;->w:Z

    const-string v0, "fastjson.parser.autoTypeAccept"

    invoke-static {v0}, Ll/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/i;->y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    sput-object v0, Lf/i;->u:[Ljava/lang/String;

    const/16 v0, 0x39

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lf/i;->x:[J

    new-instance v0, Lf/i;

    invoke-direct {v0}, Lf/i;-><init>()V

    sput-object v0, Lf/i;->y:Lf/i;

    sput-boolean v1, Lf/i;->z:Z

    sput-boolean v1, Lf/i;->A:Z

    sput-boolean v1, Lf/i;->B:Z

    sput-boolean v1, Lf/i;->C:Z

    return-void

    :array_0
    .array-data 8
        -0x7d171ecfe948c062L
        -0x79c2d22e17d46127L
        -0x74df7e34c5af42bcL    # -4.397461274202915E-255
        -0x6fffcbe90d753277L    # -1.304612425320331E-231
        -0x6d0dad3c673fd6baL
        -0x61bfb1a7c0dab02cL    # -5.663184347754154E-163
        -0x60d1df049fb65c8fL
        -0x575556d6bb90031cL    # -8.660931078614971E-113
        -0x546472f8c6b73563L    # -1.2596128630232586E-98
        -0x5034ac668c315c09L    # -1.8437248463066885E-78
        -0x4aeeb38feca3bac8L    # -4.515141395732244E-53
        -0x3f01cd4723768217L    # -123691.55384205993
        -0x3a6557b2656b39c0L    # -2.062519066697081E27
        -0x36d2706ed650cc65L    # -3.296140319984399E44
        -0x338dfabc23a18f70L    # -1.8098708904816462E60
        -0x2f18e591eaa9fc3fL    # -5.478753662882175E81
        -0x2ee2d56becc85844L    # -5.533252572810275E82
        -0x2484003e68c96caeL    # -4.9684551070599265E132
        -0x236a7c0ff7833d39L    # -1.0008455900325936E138
        -0x22555ee0135884a2L    # -1.6236380893367258E143
        -0x1f71178b5d90a151L    # -1.3261085623344647E157
        -0x186b0a08232c537bL    # -9.33910802048915E190
        -0x1482b8793b8cc973L    # -6.016157181125066E209
        -0xb5597c6d7fd8326L    # -9.680269230194381E253
        -0x7381064ecdce04aL    # -6.47436122473038E273
        0xd45d6f8c9017faL
        0x6b949ce6c2fe009L
        0x76566c052e83815L
        0x9df9341f0c76702L
        0xb81ba299273d4e6L
        0xd4788669a13ae74L
        0x111d12921c5466daL    # 3.06807714530297E-226
        0x178b0e2dc3ae9fe5L
        0x19dcaf4adc37d6d4L    # 4.21923310396035E-184
        0x1f10a70ee4065963L    # 4.737874920000775E-159
        0x21082dfbf63fbcc1L
        0x24ae2d07fb5d7497L
        0x26c5d923af21e2e1L    # 6.610091059703345E-122
        0x34cc8e52316fa0cbL    # 2.32920267187095E-54
        0x3f64bc3933a6a2dfL    # 0.002531158182325618
        0x42646e60ec7e5189L    # 7.02009533426548E11
        0x44d57a1b1ef53451L    # 4.0568861274459394E23
        0x4a39c6c7acb6aa18L    # 3.7672373999660865E49
        0x4bb3c59964a2fc50L    # 4.848048869469194E56
        0x4f0c3688e8a18f9fL    # 6.231012896022775E72
        0x5449ec9b0280b9efL    # 1.1074768222926346E98
        0x54dc66a59269bae1L    # 6.212002893406516E100
        0x552d9fb02ffc9defL    # 2.0734284478065116E102
        0x557f642131553498L    # 7.030812168447344E103
        0x604d6657082c1ee9L    # 7.883728180658543E155
        0x61d10af54471e5deL    # 1.533482208710523E163
        0x64dc636f343516dcL    # 7.18982986180002E177
        0x73a0be903f2bcbf4L    # 9.36603387325164E248
        0x73fba1e41c4c3553L    # 4.946007966433693E250
        0x7b606f16a261e1e6L    # 1.9550036277967994E286
        0x7f36112f218143b6L    # 6.053149392081782E304
        0x7fe2b8e675da0cefL    # 1.0517778137125186E308
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf/i;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Lg/a;Ljava/lang/ClassLoader;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/f;

    invoke-direct {v0}, Ll/f;-><init>()V

    iput-object v0, p0, Lf/i;->a:Ll/f;

    new-instance v0, Ll/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ll/f;-><init>(I)V

    iput-object v0, p0, Lf/i;->b:Ll/f;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lf/i;->c:Ljava/util/concurrent/ConcurrentMap;

    sget-boolean v0, Ll/b;->b:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lf/i;->d:Z

    new-instance v0, Lf/j;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lf/j;-><init>(I)V

    iput-object v0, p0, Lf/i;->e:Lf/j;

    sget-boolean v0, Lf/i;->v:Z

    iput-boolean v0, p0, Lf/i;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/i;->n:Z

    sget-boolean v1, Ll/l;->b:Z

    iput-boolean v1, p0, Lf/i;->o:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf/i;->p:Ljava/util/List;

    sget-boolean v1, Lf/i;->w:Z

    iput-boolean v1, p0, Lf/i;->r:Z

    const/16 v1, 0x87

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lf/i;->k:[J

    sget-object v1, Lf/i;->u:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lf/i;->u:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-static {v3}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    iput-object v1, p0, Lf/i;->l:[J

    iput-boolean p3, p0, Lf/i;->m:Z

    if-nez p1, :cond_2

    sget-boolean p3, Ll/b;->b:Z

    if-nez p3, :cond_2

    if-nez p2, :cond_1

    :try_start_0
    new-instance p2, Lg/a;

    new-instance p3, Ll/a;

    invoke-direct {p3}, Ll/a;-><init>()V

    invoke-direct {p2, p3}, Lg/a;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, p2

    goto :goto_1

    :cond_1
    new-instance p3, Lg/a;

    invoke-direct {p3, p2}, Lg/a;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p3

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    iput-object p1, p0, Lf/i;->h:Lg/a;

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lf/i;->d:Z

    :cond_3
    invoke-direct {p0}, Lf/i;->s()V

    sget-object p1, Lf/i;->t:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lf/i;->e([Ljava/lang/String;)V

    sget-object p1, Lf/i;->s:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lf/i;->f([Ljava/lang/String;)V

    sget-object p1, Lf/i;->u:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lf/i;->d([Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 8
        -0x7f2f38f433d015feL    # -9.556794763479643E-305
        -0x7903d40641508511L    # -5.085553800937495E-275
        -0x780ad5e4f815cc5aL
        -0x71522bf34d56bbbdL
        -0x708a0605f20fc080L    # -3.455901468587826E-234
        -0x6e8d5ac0ea86cf51L
        -0x6dedd28ef1c9b048L    # -1.257180119856368E-221
        -0x6be79918c4100b37L    # -7.248495544345653E-212
        -0x6bcfa3d9a7f08c3bL    # -1.943861383644949E-211
        -0x6bc886d7ce2082c1L
        -0x5edc59d06ce874e0L    # -4.802155510082355E-149
        -0x57a77d31efbb3bb0L
        -0x55c250024ef3b6c9L
        -0x539d9d0ad36755c7L    # -6.886391444241167E-95
        -0x526c85bb67ce1760L    # -3.824696155682281E-89
        -0x51af25e0529f5f6aL    # -1.3554199460470375E-85
        -0x5000b36a4665ccb3L    # -1.6894051133204177E-77
        -0x4bf0cbe38b9136b1L    # -6.213767217225293E-58
        -0x4817128a80a2ec5eL    # -2.2892361373052172E-39
        -0x467494ac696cd017L    # -1.6898413909066546E-31
        -0x4322623ed8990f32L    # -1.644030941651994E-15
        -0x41458d04e3345bdaL    # -1.5764918430089148E-6
        -0x3ff41e21450d7f75L    # -3.485288105512216
        -0x3ef795051cd19da8L    # -200031.3609283145
        -0x3d99b2f6a71301b4L    # -7.662539098639468E11
        -0x3be00836378383fbL    # -1.4742602222991634E20
        -0x399b4c9c4535faf6L    # -1.3120653062289765E31
        -0x38a661401c18dbfaL    # -5.3210898116926836E35
        -0x372b61a9fe199e57L    # -7.184498624325357E42
        -0x369c96af7d028d72L    # -3.463106763999075E45
        -0x2e10320b4cce92ccL    # -4.9428513655242083E86
        -0x2ab46e33884dc613L    # -7.718587662525667E102
        -0x2a6116e0f4f615ffL    # -2.769276834562512E104
        -0x299097546d18010bL    # -2.305158249887012E108
        -0x2735c2a6a167d454L    # -5.293540616952125E119
        -0x232729ea59bb61c2L    # -1.8485208306343955E139
        -0x21dc5f7f6574642aL    # -3.063522061072579E145
        -0x2103df70dc82befcL    # -3.5965336067206575E149
        -0x20d2200cef324c8bL    # -3.0559968239287952E150
        -0x1f651b9fb7bda7d1L    # -2.3076098125244163E157
        -0x1e6e67fb2a40b971L    # -9.894137060283861E161
        -0x1d14c5381a93b982L    # -3.211360471030518E168
        -0x19fc295ae05296d5L    # -2.6342395696172524E183
        -0x16e7b41aa4e269d6L    # -1.816185970555075E198
        -0x160df452da09f7f9L    # -2.2100835374064227E202
        -0xd67c2f662d64b89L    # -1.0343819992267985E244
        -0xc8fd5b5ab6f4718L
        -0xb8b1bbae70d98caL    # -9.573036758577548E252
        -0x816918b205a7244L
        -0x388c51df37d896fL
        -0x30c1879bb467428L    # -7.945197787260532E293
        -0x2a4039effa928e0L    # -7.14947811210233E295
        -0x5ea40fde0e1c84L
        -0x22e57f0e12cbfbL
        0x10e067cd55c5e5L
        0x761619136cc13eL
        0x22baa234c5bfb8aL
        0x3085068cb7201b8L
        0x45b11bc78a3aba3L
        0x55cfca0f2281c07L
        0xb6e292fa5955adeL
        0xee6511b66fd5ef0L    # 6.854342740564376E-237
        0x100150a253996624L    # 1.394104277479804E-231
        0x10b2bdca849d9b3eL    # 3.09032861507223E-228
        0x10dbc48446e0dae5L
        0x144277b467723158L    # 4.388573993986807E-211
        0x14db2e6fead04af0L    # 3.307156557815155E-208
        0x154b6cb22d294cfaL    # 4.271035506616844E-206
        0x17924cca5227622aL
        0x193b2697eaaed41aL    # 3.9000001662652114E-187
        0x1cd6f11c6a358bb7L    # 9.498405308272427E-170
        0x1e0a8c3358ff3daeL    # 5.762601583556236E-164
        0x24652ce717e713bbL
        0x24d2f6048fef4e49L
        0x24ec99d5e7dc5571L    # 8.058828264835688E-131
        0x25e962f1c28f71a2L
        0x275d0732b877af29L
        0x28ac82e44e933606L
        0x2ad1ce3a112f015dL
        0x2adfefbbfe29d931L
        0x2b3a37467a344cdfL
        0x2b6dd8b3229d6837L    # 1.7057077092413725E-99
        0x2d308dbbc851b0d8L    # 5.078962391870398E-91
        0x2fe950d3ea52ae0dL    # 6.832216944281275E-78
        0x313bb4abd8d4554cL    # 1.56808971921097E-71
        0x327c8ed7c8706905L    # 1.6948389662237084E-65
        0x332f0b5369a18310L
        0x339a3e0b6beebee9L    # 4.0826654570968825E-60
        0x33c64b921f523f2fL    # 2.77486720533494E-59
        0x34a81ee78429fdf1L    # 4.918595094295287E-55
        0x378307cb0111e878L    # 2.730734411398275E-41
        0x3826f4b2380c8b9bL    # 3.373058177088523E-38
        0x398f942e01920cf0L    # 1.9461954727645544E-31
        0x3a31412dbb05c7ffL    # 2.1778372103247874E-28
        0x3adba40367f73264L    # 3.5724737671988184E-25
        0x3b0b51ecbf6db221L    # 2.8248237289442712E-24
        0x42d11a560fc9fba9L    # 7.521924278884664E13
        0x43320dc9d2ae0892L    # 5.08171005500021E15
        0x440e89208f445fb9L    # 7.041042216469549E19
        0x46c808a4b5841f57L    # 9.749252615377375E32
        0x49312bdafb0077d9L    # 3.829330118647328E44
        0x4a3797b30328202cL    # 3.448058737338662E49
        0x4ba3e254e758d70dL    # 2.4377845509161763E56
        0x4bf881e49d37f530L    # 9.614713083096315E57
        0x4cf54eec05e3e818L    # 5.478576021141778E62
        0x4da972745feb30c1L    # 1.339945589251118E66
        0x4ef08c90ff16c675L    # 1.8274816638330285E72
        0x4fd10ddc6d13821fL    # 3.085523505057036E76
        0x527db6b46ce3bcbcL    # 2.3643694017797754E89
        0x535e552d6f9700c1L    # 3.954486474370437E93
        0x5728504a6d454ffcL    # 7.309005913296069E111
        0x599b5c1213a099acL    # 4.521565120980506E123
        0x5a5bd85c072e5efeL
        0x5ab0cb3071ab40d1L    # 7.275532043244496E128
        0x5b6149820275ea42L
        0x5d74d3e5b9370476L    # 1.5873759122766088E142
        0x5d92e6ddde40ed84L    # 5.762376793011253E142
        0x5f215622fb630753L    # 1.773407570959078E150
        0x61c5bdd721385107L    # 9.781342160839794E162
        0x62db241274397c34L
        0x63a220e60a17c7b9L    # 8.757288450874107E171
        0x647ab0224e149ebeL    # 1.0561215288164044E176
        0x65f81b84c1d920cdL    # 1.6005507777082922E183
        0x665c53c311193973L    # 1.2036519694555594E185
        0x6749835432e0f0d2L
        0x69b6e0175084b377L    # 1.750995289311963E201
        0x6a47501ebb2afdb2L    # 9.136601149026956E203
        0x6fcabf6fa54cafffL    # 3.244253068846464E230
        0x746bd4a53ec195fbL    # 6.376313675246868E252
        0x74b50bb9260e31ffL    # 1.5429848812177576E254
        0x75cc60f5871d0fd3L    # 2.7270901325332595E259
        0x767a586a5107feefL    # 5.184902282980218E262
        0x7aa7ee3627a19cf3L    # 6.950210684357695E282
        0x7ed9311d28bf1a65L    # 1.0797314149657436E303
        0x7ed9481d28bf417aL    # 1.0835821490243428E303
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lf/i;-><init>(Lg/a;Ljava/lang/ClassLoader;Z)V

    return-void
.end method

.method private d([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lf/i;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lf/i;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lf/i;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static o(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-class v3, Ld/a;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ld/a;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_1
    if-nez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    if-gt v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v5, v0, v1

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    aput-char v5, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_4

    if-lt v2, v4, :cond_4

    if-gt v2, v3, :cond_4

    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_4
    return-object v0
.end method

.method public static r()Lf/i;
    .locals 1

    sget-object v0, Lf/i;->y:Lf/i;

    return-object v0
.end method

.method private s()V
    .locals 7

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v1, Lh/s0;->b:Lh/s0;

    const-class v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v2, Ljava/sql/Timestamp;

    sget-object v3, Lg/b2;->c:Lg/b2;

    invoke-virtual {v0, v2, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v2, Ljava/sql/Date;

    sget-object v3, Lg/b2;->b:Lg/b2;

    invoke-virtual {v0, v2, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v2, Ljava/sql/Time;

    sget-object v3, Lg/e2;->a:Lg/e2;

    invoke-virtual {v0, v2, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v2, Ljava/util/Date;

    sget-object v3, Lh/y;->a:Lh/y;

    invoke-virtual {v0, v2, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v2, Lh/r;->b:Lh/r;

    const-class v3, Ljava/util/Calendar;

    invoke-virtual {v0, v3, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0, v3, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v2, Lc/e;

    sget-object v3, Lg/h1;->a:Lg/h1;

    invoke-virtual {v0, v2, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v2, Lh/v;->a:Lh/v;

    const-class v3, Lc/b;

    invoke-virtual {v0, v3, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/Map;

    sget-object v4, Lg/h1;->a:Lg/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/HashMap;

    sget-object v4, Lg/h1;->a:Lg/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/LinkedHashMap;

    sget-object v4, Lg/h1;->a:Lg/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/TreeMap;

    sget-object v4, Lg/h1;->a:Lg/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/concurrent/ConcurrentMap;

    sget-object v4, Lg/h1;->a:Lg/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lg/h1;->a:Lg/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v0, v3, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v2, Lg/p;->a:Lg/p;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/String;

    sget-object v4, Lh/h1;->a:Lh/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/StringBuffer;

    sget-object v4, Lh/h1;->a:Lh/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/StringBuilder;

    sget-object v4, Lh/h1;->a:Lh/h1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v4, Lh/t;->a:Lh/t;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v4, Lg/i1;->a:Lg/i1;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Lh/f0;->a:Lh/f0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Integer;

    sget-object v5, Lh/f0;->a:Lh/f0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v5, Lh/q0;->a:Lh/q0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Long;

    sget-object v5, Lh/q0;->a:Lh/q0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/math/BigInteger;

    sget-object v5, Lh/o;->c:Lh/o;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, Lh/n;->c:Lh/n;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Lh/d0;->b:Lh/d0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Float;

    sget-object v5, Lh/d0;->b:Lh/d0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v0, v3, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Lh/p;->a:Lh/p;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    new-instance v3, Lh/s;

    invoke-direct {v3}, Lh/s;-><init>()V

    const-class v6, [C

    invoke-virtual {v0, v6, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v5, Lh/f0;->a:Lh/f0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v5, Lh/q0;->a:Lh/q0;

    invoke-virtual {v0, v3, v5}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v3, Lh/z0;->a:Lh/z0;

    const-class v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v5, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v5, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0, v5, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/UUID;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/TimeZone;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/Locale;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/Currency;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/net/Inet4Address;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/net/Inet6Address;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/io/File;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/net/URI;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/net/URL;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Lc/g;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1, v4}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    sget-object v1, Lh/i;->a:Lh/i;

    const-class v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v3, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v3, Lg/c2;->a:Lg/c2;

    invoke-virtual {v0, v1, v3}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v0, v1, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    const-class v1, Ljava/io/Closeable;

    invoke-virtual {v0, v1, v2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/i;->a:Ll/f;

    new-instance v1, Lg/n;

    invoke-direct {v1}, Lg/n;-><init>()V

    const-class v2, Lc/f;

    invoke-virtual {v0, v2, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static u(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Timestamp;

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static v(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lf/i;->v(Ljava/lang/Class;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private static y(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lf/i;->l:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lf/i;->l:[J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [J

    add-int/lit8 v2, v2, -0x1

    aput-wide v0, v3, v2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    iput-object v3, p0, Lf/i;->l:[J

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lf/i;->k:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lf/i;->k:[J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [J

    add-int/lit8 v2, v2, -0x1

    aput-wide v0, v3, v2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    iput-object v3, p0, Lf/i;->k:[J

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lf/i;->j:[J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    new-array p1, v3, [J

    aput-wide v0, p1, v2

    iput-object p1, p0, Lf/i;->j:[J

    return-void

    :cond_1
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lf/i;->j:[J

    array-length v4, p1

    add-int/2addr v4, v3

    new-array v5, v4, [J

    sub-int/2addr v4, v3

    aput-wide v0, v5, v4

    array-length v0, p1

    invoke-static {p1, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    iput-object v5, p0, Lf/i;->j:[J

    :cond_3
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget v0, Lc/a;->f:I

    invoke-virtual {p0, p1, p2, v0}, Lf/i;->h(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    iget-object v5, v1, Lf/i;->q:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lf/i;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i$a;

    invoke-interface {v6, v0, v2, v3}, Lf/i$a;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_1

    return-object v6

    :cond_2
    sget-object v5, Lf/b;->z:Lf/b;

    iget v5, v5, Lf/b;->a:I

    iget-boolean v6, v1, Lf/i;->r:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_4

    and-int v6, v3, v5

    if-nez v6, :cond_4

    sget v6, Lc/a;->f:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc0

    const-string v9, "autoType is not support. "

    if-ge v5, v6, :cond_2e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2e

    if-nez v2, :cond_6

    :cond_5
    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v10

    const-wide v12, -0x6f5da0a455dead62L    # -1.514751450580626E-228

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x2d10a5801b9d6136L    # 1.2768618085266423E-91

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x50a795a8e1cfd395L    # -1.2869594668238042E-80

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x12ff8cff584dd83aL    # -1.1341028219519378E217

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x295c4605fd1eaa95L

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x47ef269aadc650b4L    # 3.312520992710671E38

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x6439c4dff712ae8bL    # 6.373467611436065E174

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x1c22678a5d23ad7dL    # -1.1437309411088266E173

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x1d572245fc1961f3L    # -1.8328867399748285E167

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x28cb314b3c162e26L    # -1.2509996135591577E112

    cmp-long v5, v10, v12

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    :goto_3
    const/16 v10, 0x24

    const/16 v11, 0x2e

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    int-to-long v12, v12

    const-wide v14, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    xor-long/2addr v12, v14

    const-wide v16, 0x100000001b3L

    mul-long v12, v12, v16

    const-wide v18, -0x509be9b379fdb0e6L    # -2.1176223865607047E-80

    cmp-long v20, v12, v18

    if-eqz v20, :cond_2d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v20, v9

    int-to-long v8, v4

    xor-long/2addr v8, v12

    mul-long v8, v8, v16

    const-wide v12, 0x9198507b5af98f0L

    cmp-long v4, v8, v12

    if-eqz v4, :cond_2c

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v8, v4

    xor-long/2addr v8, v14

    mul-long v8, v8, v16

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    int-to-long v12, v12

    xor-long/2addr v8, v12

    mul-long v8, v8, v16

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v12, v4

    xor-long/2addr v8, v12

    mul-long v8, v8, v16

    invoke-static {v10}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v12

    sget-object v4, Lf/i;->x:[J

    invoke-static {v4, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    if-ltz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    iget-object v14, v1, Lf/i;->j:[J

    if-eqz v14, :cond_a

    move-wide/from16 v21, v8

    const/4 v14, 0x3

    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_a

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    int-to-long v6, v15

    xor-long v6, v21, v6

    mul-long v6, v6, v16

    iget-object v15, v1, Lf/i;->j:[J

    invoke-static {v15, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v15

    if-gez v15, :cond_9

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v21, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object/from16 v6, v20

    if-nez v4, :cond_f

    iget-boolean v7, v1, Lf/i;->i:Z

    if-nez v7, :cond_b

    if-eqz v5, :cond_f

    :cond_b
    move-wide v14, v8

    const/4 v7, 0x3

    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_f

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move-wide/from16 v21, v8

    int-to-long v8, v11

    xor-long/2addr v8, v14

    mul-long v14, v8, v16

    iget-object v8, v1, Lf/i;->l:[J

    invoke-static {v8, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_c

    iget-object v8, v1, Lf/i;->g:Ljava/lang/ClassLoader;

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Ll/l;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_c

    return-object v8

    :cond_c
    iget-object v8, v1, Lf/i;->k:[J

    invoke-static {v8, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_e

    invoke-static/range {p1 .. p1}, Ll/l;->Q(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_e

    iget-object v8, v1, Lf/i;->l:[J

    invoke-static {v8, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_d

    goto :goto_7

    :cond_d
    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v8, v21

    goto :goto_6

    :cond_f
    move-wide/from16 v21, v8

    invoke-static/range {p1 .. p1}, Ll/l;->Q(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_10

    iget-object v7, v1, Lf/i;->a:Ll/f;

    invoke-virtual {v7, v0}, Ll/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    :cond_10
    if-nez v7, :cond_11

    iget-object v7, v1, Lf/i;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    :cond_11
    if-eqz v4, :cond_12

    iget-object v4, v1, Lf/i;->g:Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v0, v4, v7}, Ll/l;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    move-object v7, v4

    :cond_12
    const-string v4, " -> "

    const-string v8, "type not match. "

    if-eqz v7, :cond_15

    if-eqz v2, :cond_14

    const-class v3, Ljava/util/HashMap;

    if-eq v7, v3, :cond_14

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    new-instance v3, Lc/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    :goto_8
    return-object v7

    :cond_15
    iget-boolean v9, v1, Lf/i;->i:Z

    if-nez v9, :cond_1b

    const/4 v9, 0x3

    :goto_9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_1b

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v11, v11

    xor-long v11, v21, v11

    mul-long v11, v11, v16

    iget-object v13, v1, Lf/i;->k:[J

    invoke-static {v13, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    if-gez v13, :cond_1a

    iget-object v13, v1, Lf/i;->l:[J

    invoke-static {v13, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    if-ltz v13, :cond_19

    iget-object v3, v1, Lf/i;->g:Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Ll/l;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_16

    return-object v2

    :cond_16
    if-eqz v2, :cond_18

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_a

    :cond_17
    new-instance v3, Lc/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_18
    :goto_a
    return-object v3

    :cond_19
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v21, v11

    goto :goto_9

    :cond_1a
    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2f

    const/16 v11, 0x2e

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lf/i;->g:Ljava/lang/ClassLoader;

    if-eqz v10, :cond_1c

    :goto_b
    invoke-virtual {v10, v9}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    goto :goto_c

    :cond_1c
    const-class v10, Lf/i;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_b

    :goto_c
    if-eqz v9, :cond_1d

    :try_start_1
    new-instance v10, Le/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    :try_start_2
    invoke-direct {v10, v9, v11}, Le/b;-><init>(Ljava/io/InputStream;Z)V

    new-instance v12, Le/k;

    const-string v13, "<clinit>"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v14, 0x0

    :try_start_3
    new-array v15, v14, [Ljava/lang/Class;

    invoke-direct {v12, v13, v15}, Le/k;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v10, v12}, Le/b;->a(Le/k;)V

    invoke-virtual {v12}, Le/k;->c()Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v4, v9

    goto :goto_e

    :catch_0
    const/4 v11, 0x1

    :catch_1
    const/4 v14, 0x0

    :catch_2
    move-object/from16 v19, v9

    goto :goto_f

    :cond_1d
    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v10, 0x0

    :goto_d
    invoke-static {v9}, Ll/e;->a(Ljava/io/Closeable;)V

    goto :goto_10

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Ll/e;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_3
    const/4 v11, 0x1

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_f
    invoke-static/range {v19 .. v19}, Ll/e;->a(Ljava/io/Closeable;)V

    const/4 v10, 0x0

    :goto_10
    sget-object v9, Lf/b;->v:Lf/b;

    iget v9, v9, Lf/b;->a:I

    iget-boolean v12, v1, Lf/i;->i:Z

    if-nez v12, :cond_1f

    and-int/2addr v3, v9

    if-nez v3, :cond_1f

    sget v3, Lc/a;->f:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    const/4 v3, 0x1

    :goto_12
    if-nez v3, :cond_20

    if-nez v10, :cond_20

    if-eqz v5, :cond_23

    :cond_20
    if-nez v3, :cond_22

    if-eqz v10, :cond_21

    goto :goto_13

    :cond_21
    const/4 v7, 0x0

    goto :goto_14

    :cond_22
    :goto_13
    const/4 v7, 0x1

    :goto_14
    iget-object v5, v1, Lf/i;->g:Ljava/lang/ClassLoader;

    invoke-static {v0, v5, v7}, Ll/l;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    :cond_23
    if-eqz v7, :cond_29

    if-eqz v10, :cond_24

    invoke-static {v0, v7}, Ll/l;->b(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v7

    :cond_24
    const-class v5, Ljava/lang/ClassLoader;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_28

    const-class v5, Ljavax/sql/DataSource;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_28

    const-class v5, Ljavax/sql/RowSet;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_28

    if-eqz v2, :cond_26

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {v0, v7}, Ll/l;->b(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v7

    :cond_25
    new-instance v3, Lc/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_26
    iget-object v2, v1, Lf/i;->f:Lc/l;

    invoke-static {v7, v7, v2}, Ll/g;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;)Ll/g;

    move-result-object v2

    iget-object v2, v2, Ll/g;->d:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_29

    if-nez v3, :cond_27

    goto :goto_15

    :cond_27
    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    :goto_15
    if-eqz v3, :cond_2b

    if-eqz v7, :cond_2a

    invoke-static {v0, v7}, Ll/l;->b(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2a
    return-object v7

    :cond_2b
    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    move-object/from16 v6, v20

    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    move-object v6, v9

    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    move-object v6, v9

    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    new-instance v2, Lc/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeMode not support autoType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public i(Lf/i;Ll/g;Ll/c;)Lg/l;
    .locals 4

    iget-object p2, p2, Ll/g;->a:Ljava/lang/Class;

    iget-object v0, p3, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {p3}, Ll/c;->d()Ld/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ld/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Void;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lg/c;

    invoke-direct {v0, p1, p2, p3}, Lg/c;-><init>(Lf/i;Ljava/lang/Class;Ll/c;)V

    return-object v0

    :cond_3
    new-instance v0, Lg/f;

    invoke-direct {v0, p1, p2, p3}, Lg/f;-><init>(Lf/i;Ljava/lang/Class;Ll/c;)V

    return-object v0
.end method

.method public j(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lg/j1;"
        }
    .end annotation

    iget-boolean v0, p0, Lf/i;->d:Z

    iget-boolean v1, p0, Lf/i;->m:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    const-class v1, Ljava/lang/Void;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const-class v4, Ld/d;

    invoke-static {p1, v4}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ld/d;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ld/d;->deserializer()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lg/j1;

    if-eqz v5, :cond_0

    check-cast v0, Lg/j1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    invoke-interface {v4}, Ld/d;->asm()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_4

    invoke-static {p1, v4}, Ll/g;->f(Ljava/lang/Class;Ld/d;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, p1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_4

    if-nez v4, :cond_2

    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    iget-object v4, p0, Lf/i;->h:Lg/a;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lg/a;->a:Ll/a;

    invoke-virtual {v4, p1}, Ll/a;->c(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll/b;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_7
    if-eqz v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v0, 0x0

    :cond_8
    iget-object v6, p0, Lf/i;->f:Lc/l;

    const/4 v7, 0x0

    sget-boolean v8, Ll/l;->b:Z

    iget-boolean v9, p0, Lf/i;->n:Z

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Ll/g;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;ZZZ)Ll/g;

    move-result-object v4

    if-eqz v0, :cond_9

    iget-object v5, v4, Ll/g;->h:[Ll/c;

    array-length v5, v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_9

    const/4 v0, 0x0

    :cond_9
    iget-object v5, v4, Ll/g;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v0, 0x0

    :cond_a
    iget-object v4, v4, Ll/g;->h:[Ll/c;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_13

    aget-object v7, v4, v6

    iget-boolean v8, v7, Ll/c;->h:Z

    if-eqz v8, :cond_c

    :cond_b
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_c
    iget-object v8, v7, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v8}, Ljava/lang/Class;->isMemberClass()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v7}, Ll/c;->l()Ljava/lang/reflect/Member;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v7}, Ll/c;->l()Ljava/lang/reflect/Member;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ll/b;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {v7}, Ll/c;->d()Ld/b;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-interface {v9}, Ld/b;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ll/b;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ld/b;->format()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_b

    invoke-interface {v9}, Ld/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, v1, :cond_b

    invoke-interface {v9}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_b

    invoke-interface {v9}, Ld/b;->unwrapped()Z

    move-result v9

    if-nez v9, :cond_b

    :cond_10
    iget-object v7, v7, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-le v7, v2, :cond_11

    goto :goto_2

    :cond_11
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p0, v8}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v7

    instance-of v7, v7, Lg/h;

    if-nez v7, :cond_12

    goto :goto_2

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_13
    :goto_3
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :cond_14
    if-eqz v0, :cond_15

    invoke-static {p1}, Ll/l;->y0(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4

    :cond_15
    move v3, v0

    :goto_4
    if-nez v3, :cond_16

    new-instance v0, Lg/o;

    invoke-direct {v0, p0, p1, p2}, Lg/o;-><init>(Lf/i;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_16
    iget-object v0, p0, Lf/i;->f:Lc/l;

    invoke-static {p1, p2, v0}, Ll/g;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;)Ll/g;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lf/i;->h:Lg/a;

    invoke-virtual {v1, p0, v0}, Lg/a;->v(Lf/i;Ll/g;)Lg/j1;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lc/d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create asm deserializer error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    new-instance p1, Lg/o;

    invoke-direct {p1, p0, v0}, Lg/o;-><init>(Lf/i;Ll/g;)V

    return-object p1

    :catch_2
    new-instance v0, Lg/o;

    invoke-direct {v0, p0, p1, p2}, Lg/o;-><init>(Lf/i;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public k(Ljava/lang/reflect/Type;)Lg/j1;
    .locals 2

    invoke-static {p1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/i;->a:Ll/f;

    invoke-virtual {v0, p1}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lg/j1;

    return-object p1

    :cond_0
    iget-object v1, p0, Lf/i;->b:Ll/f;

    invoke-virtual {v1, p1}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll/f;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public l()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lf/i;->g:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public m(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lg/j1;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "java.util.Optional"

    invoke-virtual {v0, v2}, Lf/i;->k(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lf/i;->k(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    const-class v5, Ld/d;

    invoke-static {v1, v5}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ld/d;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ld/d;->mappingTo()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_3

    invoke-virtual {v0, v6, v6}, Lf/i;->m(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v1

    return-object v1

    :cond_3
    instance-of v6, v2, Ljava/lang/reflect/WildcardType;

    if-nez v6, :cond_4

    instance-of v6, v2, Ljava/lang/reflect/TypeVariable;

    if-nez v6, :cond_4

    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lf/i;->k(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    iget-object v6, v0, Lf/i;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/a;

    invoke-interface {v4, v0, v1}, Li/a;->a(Lf/i;Ljava/lang/Class;)Lg/j1;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0, v2, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    return-object v4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x24

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.awt."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_b

    invoke-static/range {p1 .. p1}, Lh/k;->k(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-boolean v7, Lf/i;->z:Z

    if-nez v7, :cond_b

    const-string v4, "java.awt.Rectangle"

    const-string v7, "java.awt.Color"

    const-string v11, "java.awt.Point"

    const-string v12, "java.awt.Font"

    filled-new-array {v11, v12, v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_a

    :try_start_0
    aget-object v11, v4, v7

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Lh/k;->a:Lh/k;

    invoke-virtual {v0, v4, v7}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v7

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    sput-boolean v10, Lf/i;->z:Z

    :cond_a
    sget-object v4, Lh/k;->a:Lh/k;

    :cond_b
    sget-boolean v7, Lf/i;->A:Z

    if-nez v7, :cond_f

    :try_start_1
    const-string v7, "java.time."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v11, "java.time.LocalDateTime"

    const-string v12, "java.time.LocalDate"

    const-string v13, "java.time.LocalTime"

    const-string v14, "java.time.ZonedDateTime"

    const-string v15, "java.time.OffsetDateTime"

    const-string v16, "java.time.OffsetTime"

    const-string v17, "java.time.ZoneOffset"

    const-string v18, "java.time.ZoneRegion"

    const-string v19, "java.time.ZoneId"

    const-string v20, "java.time.Period"

    const-string v21, "java.time.Duration"

    const-string v22, "java.time.Instant"

    filled-new-array/range {v11 .. v22}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0xc

    if-ge v7, v8, :cond_f

    aget-object v8, v3, v7

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lg/g1;->a:Lg/g1;

    invoke-virtual {v0, v3, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    return-object v4

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_d
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "java.util.OptionalDouble"

    const-string v11, "java.util.OptionalInt"

    const-string v12, "java.util.OptionalLong"

    filled-new-array {v3, v7, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_f

    aget-object v11, v3, v7

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lg/w1;->a:Lg/w1;

    invoke-virtual {v0, v3, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_1
    sput-boolean v10, Lf/i;->A:Z

    :cond_f
    sget-boolean v3, Lf/i;->B:Z

    if-nez v3, :cond_11

    :try_start_2
    const-string v3, "org.joda.time."

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v11, "org.joda.time.DateTime"

    const-string v12, "org.joda.time.LocalDate"

    const-string v13, "org.joda.time.LocalDateTime"

    const-string v14, "org.joda.time.LocalTime"

    const-string v15, "org.joda.time.Instant"

    const-string v16, "org.joda.time.Period"

    const-string v17, "org.joda.time.Duration"

    const-string v18, "org.joda.time.DateTimeZone"

    const-string v19, "org.joda.time.format.DateTimeFormatter"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    :goto_3
    const/16 v8, 0x9

    if-ge v7, v8, :cond_11

    aget-object v8, v3, v7

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lh/m0;->a:Lh/m0;

    invoke-virtual {v0, v3, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v4

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catchall_2
    sput-boolean v10, Lf/i;->B:Z

    :cond_11
    sget-boolean v3, Lf/i;->C:Z

    if-nez v3, :cond_13

    const-string v3, "com.google.common.collect."

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    :try_start_3
    const-string v3, "com.google.common.collect.HashMultimap"

    const-string v7, "com.google.common.collect.LinkedListMultimap"

    const-string v8, "com.google.common.collect.LinkedHashMultimap"

    const-string v11, "com.google.common.collect.ArrayListMultimap"

    const-string v12, "com.google.common.collect.TreeMultimap"

    filled-new-array {v3, v7, v8, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x5

    if-ge v7, v8, :cond_13

    aget-object v8, v3, v7

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lh/e0;->a:Lh/e0;

    invoke-virtual {v0, v3, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    sput-boolean v10, Lf/i;->C:Z

    :cond_13
    const-string v3, "java.nio.ByteBuffer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v4, Lh/q;->a:Lh/q;

    invoke-virtual {v0, v1, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    :cond_14
    const-string v3, "java.nio.file.Path"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v4, Lh/s0;->b:Lh/s0;

    invoke-virtual {v0, v1, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    :cond_15
    const-class v3, Ljava/util/Map$Entry;

    if-ne v1, v3, :cond_16

    sget-object v4, Lh/s0;->b:Lh/s0;

    invoke-virtual {v0, v1, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    :cond_16
    const-string v3, "org.javamoney.moneta.Money"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v4, Lj/a;->a:Lj/a;

    invoke-virtual {v0, v1, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    :cond_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :try_start_4
    const-class v6, Lg/d;

    invoke-static {v6, v3}, Ll/k;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/d;

    invoke-interface {v6}, Lg/d;->a()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    invoke-virtual {v0, v8, v6}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    nop

    :cond_19
    if-nez v4, :cond_1a

    invoke-virtual {v0, v2}, Lf/i;->k(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v4

    :cond_1a
    if-eqz v4, :cond_1b

    return-object v4

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-boolean v3, v0, Lf/i;->n:Z

    if-eqz v3, :cond_1d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    :goto_6
    if-ge v9, v4, :cond_1d

    aget-object v6, v3, v9

    invoke-static {v6}, Ll/l;->r0(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v0, v1, v2}, Lf/i;->j(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    return-object v1

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_1d
    invoke-static/range {p1 .. p1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_1e

    move-object v4, v3

    goto :goto_7

    :cond_1e
    move-object v4, v1

    :goto_7
    invoke-static {v4, v5}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ld/d;

    if-eqz v4, :cond_1f

    invoke-interface {v4}, Ld/d;->deserializer()Ljava/lang/Class;

    move-result-object v4

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/j1;

    invoke-virtual {v0, v1, v4}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-object v4

    :catchall_3
    nop

    :cond_1f
    if-eqz v3, :cond_21

    invoke-static {v3, v1}, Lf/i;->o(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_20

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    :cond_20
    const/4 v3, 0x0

    goto :goto_8

    :cond_21
    invoke-static {v1, v1}, Lf/i;->o(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_8
    if-eqz v3, :cond_22

    new-instance v2, Lg/g;

    invoke-direct {v2, v3}, Lg/g;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1, v2}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    return-object v2

    :cond_22
    invoke-virtual/range {p0 .. p1}, Lf/i;->p(Ljava/lang/Class;)Lg/j1;

    move-result-object v1

    goto :goto_b

    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_24

    sget-object v1, Lh/u0;->a:Lh/u0;

    goto :goto_b

    :cond_24
    const-class v3, Ljava/util/Set;

    if-eq v1, v3, :cond_2b

    const-class v3, Ljava/util/HashSet;

    if-eq v1, v3, :cond_2b

    const-class v3, Ljava/util/Collection;

    if-eq v1, v3, :cond_2b

    const-class v4, Ljava/util/List;

    if-eq v1, v4, :cond_2b

    const-class v4, Ljava/util/ArrayList;

    if-ne v1, v4, :cond_25

    goto :goto_a

    :cond_25
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_a

    :cond_26
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v1, Lg/h1;->a:Lg/h1;

    goto :goto_b

    :cond_27
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_28

    new-instance v3, Lg/d2;

    invoke-direct {v3, v0, v1}, Lg/d2;-><init>(Lf/i;Ljava/lang/Class;)V

    :goto_9
    move-object v1, v3

    goto :goto_b

    :cond_28
    const-class v3, Lg/y1;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v3, Lg/z1;

    invoke-direct {v3, v1}, Lg/z1;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    :cond_29
    const-class v3, Ljava/net/InetAddress;

    if-ne v1, v3, :cond_2a

    sget-object v1, Lh/s0;->b:Lh/s0;

    goto :goto_b

    :cond_2a
    invoke-virtual {v0, v1, v2}, Lf/i;->j(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v1

    goto :goto_b

    :cond_2b
    :goto_a
    sget-object v1, Lh/v;->a:Lh/v;

    :goto_b
    invoke-virtual {v0, v2, v1}, Lf/i;->w(Ljava/lang/reflect/Type;Lg/j1;)V

    return-object v1
.end method

.method public n(Ljava/lang/reflect/Type;)Lg/j1;
    .locals 2

    invoke-virtual {p0, p1}, Lf/i;->k(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lf/i;->m(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lf/i;->m(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v0}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lg/p;->a:Lg/p;

    return-object p1
.end method

.method protected p(Ljava/lang/Class;)Lg/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lg/j1;"
        }
    .end annotation

    new-instance v0, Lg/h;

    invoke-direct {v0, p1}, Lg/h;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lf/i;->n:Z

    return v0
.end method

.method public w(Ljava/lang/reflect/Type;Lg/j1;)V
    .locals 3

    invoke-static {p1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lf/i;->b:Ll/f;

    invoke-virtual {v1, p1}, Ll/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/f;

    if-nez v1, :cond_0

    new-instance v1, Ll/f;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ll/f;-><init>(I)V

    iget-object v2, p0, Lf/i;->b:Ll/f;

    invoke-virtual {v2, p1, v1}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, v0, p2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/i;->a:Ll/f;

    invoke-virtual {v0, p1, p2}, Ll/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lf/i;->d:Z

    return-void
.end method
