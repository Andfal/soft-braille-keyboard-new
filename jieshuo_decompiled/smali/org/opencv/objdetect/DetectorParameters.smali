.class public Lorg/opencv/objdetect/DetectorParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/opencv/objdetect/DetectorParameters;->DetectorParameters_0()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    return-void
.end method

.method private static native DetectorParameters_0()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/DetectorParameters;
    .locals 1

    new-instance v0, Lorg/opencv/objdetect/DetectorParameters;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/DetectorParameters;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method private static native get_adaptiveThreshConstant_0(J)D
.end method

.method private static native get_adaptiveThreshWinSizeMax_0(J)I
.end method

.method private static native get_adaptiveThreshWinSizeMin_0(J)I
.end method

.method private static native get_adaptiveThreshWinSizeStep_0(J)I
.end method

.method private static native get_aprilTagCriticalRad_0(J)F
.end method

.method private static native get_aprilTagDeglitch_0(J)I
.end method

.method private static native get_aprilTagMaxLineFitMse_0(J)F
.end method

.method private static native get_aprilTagMaxNmaxima_0(J)I
.end method

.method private static native get_aprilTagMinClusterPixels_0(J)I
.end method

.method private static native get_aprilTagMinWhiteBlackDiff_0(J)I
.end method

.method private static native get_aprilTagQuadDecimate_0(J)F
.end method

.method private static native get_aprilTagQuadSigma_0(J)F
.end method

.method private static native get_cornerRefinementMaxIterations_0(J)I
.end method

.method private static native get_cornerRefinementMethod_0(J)I
.end method

.method private static native get_cornerRefinementMinAccuracy_0(J)D
.end method

.method private static native get_cornerRefinementWinSize_0(J)I
.end method

.method private static native get_detectInvertedMarker_0(J)Z
.end method

.method private static native get_errorCorrectionRate_0(J)D
.end method

.method private static native get_markerBorderBits_0(J)I
.end method

.method private static native get_maxErroneousBitsInBorderRate_0(J)D
.end method

.method private static native get_maxMarkerPerimeterRate_0(J)D
.end method

.method private static native get_minCornerDistanceRate_0(J)D
.end method

.method private static native get_minDistanceToBorder_0(J)I
.end method

.method private static native get_minGroupDistance_0(J)F
.end method

.method private static native get_minMarkerDistanceRate_0(J)D
.end method

.method private static native get_minMarkerLengthRatioOriginalImg_0(J)F
.end method

.method private static native get_minMarkerPerimeterRate_0(J)D
.end method

.method private static native get_minOtsuStdDev_0(J)D
.end method

.method private static native get_minSideLengthCanonicalImg_0(J)I
.end method

.method private static native get_perspectiveRemoveIgnoredMarginPerCell_0(J)D
.end method

.method private static native get_perspectiveRemovePixelPerCell_0(J)I
.end method

.method private static native get_polygonalApproxAccuracyRate_0(J)D
.end method

.method private static native get_relativeCornerRefinmentWinSize_0(J)F
.end method

.method private static native get_useAruco3Detection_0(J)Z
.end method

.method private static native set_adaptiveThreshConstant_0(JD)V
.end method

.method private static native set_adaptiveThreshWinSizeMax_0(JI)V
.end method

.method private static native set_adaptiveThreshWinSizeMin_0(JI)V
.end method

.method private static native set_adaptiveThreshWinSizeStep_0(JI)V
.end method

.method private static native set_aprilTagCriticalRad_0(JF)V
.end method

.method private static native set_aprilTagDeglitch_0(JI)V
.end method

.method private static native set_aprilTagMaxLineFitMse_0(JF)V
.end method

.method private static native set_aprilTagMaxNmaxima_0(JI)V
.end method

.method private static native set_aprilTagMinClusterPixels_0(JI)V
.end method

.method private static native set_aprilTagMinWhiteBlackDiff_0(JI)V
.end method

.method private static native set_aprilTagQuadDecimate_0(JF)V
.end method

.method private static native set_aprilTagQuadSigma_0(JF)V
.end method

.method private static native set_cornerRefinementMaxIterations_0(JI)V
.end method

.method private static native set_cornerRefinementMethod_0(JI)V
.end method

.method private static native set_cornerRefinementMinAccuracy_0(JD)V
.end method

.method private static native set_cornerRefinementWinSize_0(JI)V
.end method

.method private static native set_detectInvertedMarker_0(JZ)V
.end method

.method private static native set_errorCorrectionRate_0(JD)V
.end method

.method private static native set_markerBorderBits_0(JI)V
.end method

.method private static native set_maxErroneousBitsInBorderRate_0(JD)V
.end method

.method private static native set_maxMarkerPerimeterRate_0(JD)V
.end method

.method private static native set_minCornerDistanceRate_0(JD)V
.end method

.method private static native set_minDistanceToBorder_0(JI)V
.end method

.method private static native set_minGroupDistance_0(JF)V
.end method

.method private static native set_minMarkerDistanceRate_0(JD)V
.end method

.method private static native set_minMarkerLengthRatioOriginalImg_0(JF)V
.end method

.method private static native set_minMarkerPerimeterRate_0(JD)V
.end method

.method private static native set_minOtsuStdDev_0(JD)V
.end method

.method private static native set_minSideLengthCanonicalImg_0(JI)V
.end method

.method private static native set_perspectiveRemoveIgnoredMarginPerCell_0(JD)V
.end method

.method private static native set_perspectiveRemovePixelPerCell_0(JI)V
.end method

.method private static native set_polygonalApproxAccuracyRate_0(JD)V
.end method

.method private static native set_relativeCornerRefinmentWinSize_0(JF)V
.end method

.method private static native set_useAruco3Detection_0(JZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->delete(J)V

    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    return-wide v0
.end method

.method public get_adaptiveThreshConstant()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_adaptiveThreshConstant_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_adaptiveThreshWinSizeMax()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_adaptiveThreshWinSizeMax_0(J)I

    move-result v0

    return v0
.end method

.method public get_adaptiveThreshWinSizeMin()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_adaptiveThreshWinSizeMin_0(J)I

    move-result v0

    return v0
.end method

.method public get_adaptiveThreshWinSizeStep()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_adaptiveThreshWinSizeStep_0(J)I

    move-result v0

    return v0
.end method

.method public get_aprilTagCriticalRad()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagCriticalRad_0(J)F

    move-result v0

    return v0
.end method

.method public get_aprilTagDeglitch()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagDeglitch_0(J)I

    move-result v0

    return v0
.end method

.method public get_aprilTagMaxLineFitMse()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagMaxLineFitMse_0(J)F

    move-result v0

    return v0
.end method

.method public get_aprilTagMaxNmaxima()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagMaxNmaxima_0(J)I

    move-result v0

    return v0
.end method

.method public get_aprilTagMinClusterPixels()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagMinClusterPixels_0(J)I

    move-result v0

    return v0
.end method

.method public get_aprilTagMinWhiteBlackDiff()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagMinWhiteBlackDiff_0(J)I

    move-result v0

    return v0
.end method

.method public get_aprilTagQuadDecimate()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagQuadDecimate_0(J)F

    move-result v0

    return v0
.end method

.method public get_aprilTagQuadSigma()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_aprilTagQuadSigma_0(J)F

    move-result v0

    return v0
.end method

.method public get_cornerRefinementMaxIterations()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_cornerRefinementMaxIterations_0(J)I

    move-result v0

    return v0
.end method

.method public get_cornerRefinementMethod()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_cornerRefinementMethod_0(J)I

    move-result v0

    return v0
.end method

.method public get_cornerRefinementMinAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_cornerRefinementMinAccuracy_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_cornerRefinementWinSize()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_cornerRefinementWinSize_0(J)I

    move-result v0

    return v0
.end method

.method public get_detectInvertedMarker()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_detectInvertedMarker_0(J)Z

    move-result v0

    return v0
.end method

.method public get_errorCorrectionRate()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_errorCorrectionRate_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_markerBorderBits()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_markerBorderBits_0(J)I

    move-result v0

    return v0
.end method

.method public get_maxErroneousBitsInBorderRate()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_maxErroneousBitsInBorderRate_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_maxMarkerPerimeterRate()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_maxMarkerPerimeterRate_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_minCornerDistanceRate()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minCornerDistanceRate_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_minDistanceToBorder()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minDistanceToBorder_0(J)I

    move-result v0

    return v0
.end method

.method public get_minGroupDistance()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minGroupDistance_0(J)F

    move-result v0

    return v0
.end method

.method public get_minMarkerDistanceRate()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minMarkerDistanceRate_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_minMarkerLengthRatioOriginalImg()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minMarkerLengthRatioOriginalImg_0(J)F

    move-result v0

    return v0
.end method

.method public get_minMarkerPerimeterRate()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minMarkerPerimeterRate_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_minOtsuStdDev()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minOtsuStdDev_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_minSideLengthCanonicalImg()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_minSideLengthCanonicalImg_0(J)I

    move-result v0

    return v0
.end method

.method public get_perspectiveRemoveIgnoredMarginPerCell()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_perspectiveRemoveIgnoredMarginPerCell_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_perspectiveRemovePixelPerCell()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_perspectiveRemovePixelPerCell_0(J)I

    move-result v0

    return v0
.end method

.method public get_polygonalApproxAccuracyRate()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_polygonalApproxAccuracyRate_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_relativeCornerRefinmentWinSize()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_relativeCornerRefinmentWinSize_0(J)F

    move-result v0

    return v0
.end method

.method public get_useAruco3Detection()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/DetectorParameters;->get_useAruco3Detection_0(J)Z

    move-result v0

    return v0
.end method

.method public set_adaptiveThreshConstant(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_adaptiveThreshConstant_0(JD)V

    return-void
.end method

.method public set_adaptiveThreshWinSizeMax(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_adaptiveThreshWinSizeMax_0(JI)V

    return-void
.end method

.method public set_adaptiveThreshWinSizeMin(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_adaptiveThreshWinSizeMin_0(JI)V

    return-void
.end method

.method public set_adaptiveThreshWinSizeStep(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_adaptiveThreshWinSizeStep_0(JI)V

    return-void
.end method

.method public set_aprilTagCriticalRad(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagCriticalRad_0(JF)V

    return-void
.end method

.method public set_aprilTagDeglitch(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagDeglitch_0(JI)V

    return-void
.end method

.method public set_aprilTagMaxLineFitMse(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagMaxLineFitMse_0(JF)V

    return-void
.end method

.method public set_aprilTagMaxNmaxima(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagMaxNmaxima_0(JI)V

    return-void
.end method

.method public set_aprilTagMinClusterPixels(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagMinClusterPixels_0(JI)V

    return-void
.end method

.method public set_aprilTagMinWhiteBlackDiff(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagMinWhiteBlackDiff_0(JI)V

    return-void
.end method

.method public set_aprilTagQuadDecimate(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagQuadDecimate_0(JF)V

    return-void
.end method

.method public set_aprilTagQuadSigma(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_aprilTagQuadSigma_0(JF)V

    return-void
.end method

.method public set_cornerRefinementMaxIterations(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_cornerRefinementMaxIterations_0(JI)V

    return-void
.end method

.method public set_cornerRefinementMethod(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_cornerRefinementMethod_0(JI)V

    return-void
.end method

.method public set_cornerRefinementMinAccuracy(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_cornerRefinementMinAccuracy_0(JD)V

    return-void
.end method

.method public set_cornerRefinementWinSize(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_cornerRefinementWinSize_0(JI)V

    return-void
.end method

.method public set_detectInvertedMarker(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_detectInvertedMarker_0(JZ)V

    return-void
.end method

.method public set_errorCorrectionRate(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_errorCorrectionRate_0(JD)V

    return-void
.end method

.method public set_markerBorderBits(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_markerBorderBits_0(JI)V

    return-void
.end method

.method public set_maxErroneousBitsInBorderRate(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_maxErroneousBitsInBorderRate_0(JD)V

    return-void
.end method

.method public set_maxMarkerPerimeterRate(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_maxMarkerPerimeterRate_0(JD)V

    return-void
.end method

.method public set_minCornerDistanceRate(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_minCornerDistanceRate_0(JD)V

    return-void
.end method

.method public set_minDistanceToBorder(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_minDistanceToBorder_0(JI)V

    return-void
.end method

.method public set_minGroupDistance(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_minGroupDistance_0(JF)V

    return-void
.end method

.method public set_minMarkerDistanceRate(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_minMarkerDistanceRate_0(JD)V

    return-void
.end method

.method public set_minMarkerLengthRatioOriginalImg(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_minMarkerLengthRatioOriginalImg_0(JF)V

    return-void
.end method

.method public set_minMarkerPerimeterRate(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_minMarkerPerimeterRate_0(JD)V

    return-void
.end method

.method public set_minOtsuStdDev(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_minOtsuStdDev_0(JD)V

    return-void
.end method

.method public set_minSideLengthCanonicalImg(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_minSideLengthCanonicalImg_0(JI)V

    return-void
.end method

.method public set_perspectiveRemoveIgnoredMarginPerCell(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_perspectiveRemoveIgnoredMarginPerCell_0(JD)V

    return-void
.end method

.method public set_perspectiveRemovePixelPerCell(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_perspectiveRemovePixelPerCell_0(JI)V

    return-void
.end method

.method public set_polygonalApproxAccuracyRate(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/DetectorParameters;->set_polygonalApproxAccuracyRate_0(JD)V

    return-void
.end method

.method public set_relativeCornerRefinmentWinSize(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_relativeCornerRefinmentWinSize_0(JF)V

    return-void
.end method

.method public set_useAruco3Detection(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/DetectorParameters;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/DetectorParameters;->set_useAruco3Detection_0(JZ)V

    return-void
.end method
